class Users::Tier < ApplicationRecord
	has_many :categories, class_name: 'Users::Category', foreign_key: :users_tier_id

	validates :name, presence: true
end
