class AddCategoryToUser < ActiveRecord::Migration[5.2]
	def change
		remove_column :users, :category
		add_reference :users, :users_category
	end
end
