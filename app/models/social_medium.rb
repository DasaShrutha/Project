class SocialMedium < ApplicationRecord
	validates :name, presence: true
	validates :url, presence: true
	validates :icon, presence: true

	before_create :set_position_if_missing

	def display_icon
		"<i class='fa #{self.icon}' aria-hidden='true'></i>".html_safe
	end

	private

		def set_position_if_missing
			self.position ||= SocialMedium.maximum(:position) || 0 + 1
		end
end
