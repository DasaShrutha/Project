class Users::Category < ApplicationRecord
	belongs_to :tier, class_name: 'Users::Tier', foreign_key: :users_tier_id
	has_many :users, foreign_key: :users_category_id

	validates :name, presence: true
end
