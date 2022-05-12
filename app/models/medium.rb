class Medium < ApplicationRecord
	include Attached::HasOne

	ATTACHMENT_TYPES = %w(image/jpeg image/png video/mp4)

	default_scope {order(created_at: :desc)}

	has_many :media_medium_categories, class_name: 'Media::MediumCategory'
	has_many :categories, class_name: 'Media::Category', through: :media_medium_categories, source: :media_category

	validates :title, presence: true
end
