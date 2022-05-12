class CreateFasta < ActiveRecord::Migration[5.2]
	def change
		create_table :fasta do |t|
			t.decimal :latitude
			t.decimal :longitude
			t.belongs_to :user, foreign_key: true

			t.timestamps
		end

		add_index  :fasta, :latitude
		add_index  :fasta, :longitude
	end
end
