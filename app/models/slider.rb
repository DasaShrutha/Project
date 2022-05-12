class Slider < ApplicationRecord
	include Attached::HasOne

	ATTACHMENT_TYPES = %w(image/jpeg image/png)

	validates :alt_text, presence: true
	validates :sequence, presence: true

	alias_attribute :name, :alt_text
end
