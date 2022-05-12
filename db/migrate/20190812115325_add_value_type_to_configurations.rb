class AddValueTypeToConfigurations < ActiveRecord::Migration[5.2]
	def change
		add_column :configurations, :value_type, :string, null: false, default: Configuration::VALUE_TYPES[:text]
	end
end
