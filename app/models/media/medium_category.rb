class Media::MediumCategory < ApplicationRecord
	belongs_to :medium
	belongs_to :media_category, class_name: 'Media::Category'
end
