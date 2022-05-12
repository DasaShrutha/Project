class CreateSliders < ActiveRecord::Migration[5.2]
	def change
		create_table :sliders do |t|
			t.string :alt_text
			t.integer :sequence

			t.timestamps
		end
	end
end
