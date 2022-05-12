class CreateUsersCategories < ActiveRecord::Migration[5.2]
	def change
		create_table :users_categories do |t|
			t.string :name
			t.belongs_to :users_tier

			t.timestamps
		end
	end
end
