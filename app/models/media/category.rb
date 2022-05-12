class Media::Category < ApplicationRecord
	has_many :media_medium_categories, class_name: 'Media::MediumCategory', foreign_key: :media_category_id
	has_many :media, through: :media_medium_categories, source: :medium
end
