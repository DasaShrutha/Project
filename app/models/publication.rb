class Publication < ApplicationRecord
	include Attached::HasOne

	ATTACHMENT_TYPES = %w(application/pdf)

	default_scope {order(created_at: :desc)}

	validates :title, presence: true, uniqueness: true
end
