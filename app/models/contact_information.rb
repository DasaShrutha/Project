class ContactInformation < ApplicationRecord
	validates :value, presence: true
	validates :icon, presence: true

	alias_attribute :name, :contact_type

	def display_icon
		"<i class='fa #{self.icon}' aria-hidden='true'></i>".html_safe
	end
end
