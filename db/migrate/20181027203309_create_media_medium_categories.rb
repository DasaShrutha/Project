class CreateMediaMediumCategories < ActiveRecord::Migration[5.2]
	def change
		create_table :media_medium_categories do |t|
			t.belongs_to :medium
			t.belongs_to :media_category

			t.timestamps
		end
	end
end
