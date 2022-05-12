class AddFieldsToUsers < ActiveRecord::Migration[5.2]
	def change
		add_column :users, :institution, :string
		add_column :users, :country, :string
		add_column :users, :designation, :string
		add_column :users, :project, :string
		add_column :users, :potential_use_of_data, :string
	end
end
