class DataController < ApplicationController
	authorize_resource class: false

	before_action :configure_assets, only: %i[index]
	before_action :set_fasta, only: %i[show]

	def index
		@fasta ||= Fasta.new

		if request.xhr? && %i[latitude longitude].all? { |param| params.key? param }
			fasta_records = Fasta.records_for_near params[:latitude].to_f, params[:longitude].to_f

			if fasta_records.present?
				render partial: 'data/list', locals: {fasta_records: fasta_records}
			else
				render partial: 'data/no_records'
			end
		end
	end

	def show
		render partial: 'data/show', locals: {fasta: @fasta}
	end

	def create
		@fasta = Fasta.new fasta_params
		@fasta.user = current_user

		if @fasta.save
			render json: {
				success: true,
				data: {
					message: 'File saved successfully'
				}
			}
		else
			render json: {
				success: false,
				data: {
					errors: Hash[@fasta.errors.messages.map { |field, error| [field.to_s.titleize, error] }]
				}
			}
		end
	end

	def refresh
		if %i[north_east_latitude north_east_longitude south_west_latitude south_west_longitude].all? { |param| params.key? param }
			fasta_records = Fasta.records_in_zone(
				params[:north_east_latitude].to_f, params[:north_east_longitude].to_f,
				params[:south_west_latitude].to_f, params[:south_west_longitude].to_f
			)

			if fasta_records.present?
				render json: fasta_records.map { |fasta| {latitude: fasta.latitude, longitude: fasta.longitude} }
			else
				render json: {}
			end
		end
	end

	private

		def set_fasta
			@fasta = Fasta.find params[:id]
		end

		def fasta_params
			params.require(:fasta).permit(
				:attachment, :name_of_contributor, :organization, :project, :location_of_sample_collection,
				:latitude_notation, :longitude_notation, :nature_of_sample, :sample_source, :temperature, :salinity,
				:depth, :organism_present_in_sample, :type_of_genetic_material_sequenced, :source_of_genetic_material,
				:region_sequenced, :sequencing_technology, :phred_quality_score, :sequence_length, :comments
			)
		end

		def configure_assets
			@title = 'Data'
			@stylesheets = %w( theme/regular theme/contact )
			@javascripts = %w( theme/regular highmaps )
		end
end
