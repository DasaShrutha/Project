class CreateSocialMedia < ActiveRecord::Migration[5.2]
	def change
		create_table :social_media do |t|
			t.string :name
			t.string :icon
			t.string :url
			t.integer :position

			t.timestamps
		end
	end
end
