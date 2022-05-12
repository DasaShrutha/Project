class CreateContactInformations < ActiveRecord::Migration[5.2]
	def change
		create_table :contact_informations do |t|
			t.string :contact_type
			t.text :value
			t.string :icon

			t.timestamps
		end
	end
end
