class AddMetadataFieldsToFasta < ActiveRecord::Migration[5.2]
	def change
		add_column :fasta, :name_of_contributor, :string
		add_column :fasta, :organization, :string
		add_column :fasta, :project, :string
		add_column :fasta, :location_of_sample_collection, :string
		add_column :fasta, :nature_of_sample, :string
		add_column :fasta, :sample_source, :string
		add_column :fasta, :temperature, :float
		add_column :fasta, :salinity, :float
		add_column :fasta, :depth, :float
		add_column :fasta, :organism_present_in_sample, :string
		add_column :fasta, :type_of_genetic_material_sequenced, :string
		add_column :fasta, :source_of_genetic_material, :string
		add_column :fasta, :region_sequenced, :string
		add_column :fasta, :sequencing_technology, :string
		add_column :fasta, :phred_quality_score, :integer
		add_column :fasta, :sequence_length, :integer
		add_column :fasta, :comments, :text
	end
end
