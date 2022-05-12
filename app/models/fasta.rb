class Fasta < ApplicationRecord
	include Attached::HasOne

	ATTACHMENT_TYPES_FASTA = 'application/octet-stream'
	ATTACHMENT_TYPES_ZIP = 'application/zip'
	ATTACHMENT_TYPES = [ATTACHMENT_TYPES_FASTA, ATTACHMENT_TYPES_ZIP]
	BOUND_DIFFERENCE = 0.1
	LATITUDE_REGEX = /\d+(\.\d*)?\s[NS]/
	LONGITUDE_REGEX = /\d+(\.\d*)?\s[EW]/
	NATURE_OF_SAMPLE = %w(Freshwater Marine Brackish Others)
	TYPE_OF_GENETIC_MATERIAL_SEQUENCED = %w(DNA RNA Others)
	SAMPLE_SOURCE = %w(Water Sediment Others)
	SOURCE_OF_GENETIC_MATERIAL = %w(Nucleus Chloroplast Mitochondria Others)

	attr_accessor :latitude_notation, :longitude_notation

	belongs_to :user

	validates :name_of_contributor, presence: true
	validates :organization, presence: true
	validates :project, presence: true
	validates :location_of_sample_collection, presence: true
	#validates :latitude, presence: true
	#validates :longitude, presence: true
	validates :nature_of_sample, inclusion: {in: NATURE_OF_SAMPLE}, presence: true
	validates :sample_source, inclusion: {in: SAMPLE_SOURCE}, presence: true
	validates :temperature, presence: true
	validates :salinity, presence: true
	validates :depth, presence: true
	validates :organism_present_in_sample, presence: true
	validates :type_of_genetic_material_sequenced, inclusion: {in: TYPE_OF_GENETIC_MATERIAL_SEQUENCED}, presence: true
	validates :source_of_genetic_material, inclusion: {in: SOURCE_OF_GENETIC_MATERIAL}, presence: true
	validates :region_sequenced, presence: true
	validates :sequencing_technology, presence: true
	validates :phred_quality_score, presence: true
	validates :sequence_length, presence: true

	validates :latitude_notation, presence: true
	validates :longitude_notation, presence: true

	before_save :convert_notations_to_coordinates

	after_create :copy_fasta_to_blast_db
	after_create :unpack_fasta
	after_initialize :convert_coordinates_to_notations

	scope :records_for_near, -> (latitude, longitude) {
		where(
			'(latitude >= ? AND latitude <= ?) AND (longitude >= ? AND longitude <= ?)',
			latitude - BOUND_DIFFERENCE, latitude + BOUND_DIFFERENCE,
			longitude - BOUND_DIFFERENCE, longitude + BOUND_DIFFERENCE
		)
	}

	scope :records_in_zone, -> (
		north_east_latitude, north_east_longitude,
		south_west_latitude, south_west_longitude
	) {
		where(
			'(latitude BETWEEN ? AND ?) AND (longitude BETWEEN ? AND ?)',
			south_west_latitude, north_east_latitude, south_west_longitude, north_east_longitude
		)
	}

	def sequence
		attachment.download
	end

	def to_json
		{
			latitude: latitude,
			longitude: longitude,
			attachment: attachment.filename
		}
	end

	def deep_copy
		self.class.new(Marshal.load(Marshal.dump(self)).attributes.except('id', 'created_at', 'updated_at'))
	end

	private

		def convert_coordinates_to_notations
			self.latitude_notation = "#{latitude.abs} #{latitude >= 0 ? 'N' : 'S'}" if latitude.present?
			self.longitude_notation = "#{longitude.abs} #{longitude >= 0 ? 'E' : 'W'}" if longitude.present?
		end

		def convert_notations_to_coordinates
			if latitude_notation.match(LATITUDE_REGEX)
				latitude_details = latitude_notation.split(' ')
				self.latitude = latitude_details[0].to_f
				self.latitude *= -1 if latitude_details[1].eql? 'S'
			else
				self.errors.add(:latitude, 'format is invalid.')
			end

			if longitude_notation.match(LONGITUDE_REGEX)
				longitude_details = longitude_notation.split(' ')
				self.longitude = longitude_details[0].to_f
				self.longitude *= -1 if longitude_details[1].eql? 'W'
			else
				self.errors.add(:longitude, 'format is invalid')
			end

			throw :abort if self.errors.any?
		end

		def copy_fasta_to_blast_db
			CopyFastaToBlastDBJob.perform_later(self) if self.attachment.content_type.eql?(ATTACHMENT_TYPES_FASTA)
		end

		def unpack_fasta
			UnpackFastaJob.perform_later(self) if self.attachment.content_type.eql?(ATTACHMENT_TYPES_ZIP)
		end
end
