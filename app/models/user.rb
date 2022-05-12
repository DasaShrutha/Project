class User < ApplicationRecord
	ROLE_ADMIN = 'admin'.freeze
	ROLE_USER = 'user'.freeze

	# Include default devise modules. Others available are: :confirmable, :lockable, :timeoutable, and :omniauthable
	devise :database_authenticatable, :recoverable, :rememberable, :registerable, :trackable, :validatable,
	       :password_archivable

	belongs_to :category, class_name: 'Users::Category', foreign_key: :users_category_id

	validates :email, presence: true
	validates :name, presence: true
	validates :institution, presence: true
	validates :country, presence: true
	validates :designation, presence: true
	validates :project, presence: true
	validates :potential_use_of_data, presence: true
	validate :password_complexity

	before_create :assign_role
	before_create :approve_if_admin
	after_create :send_notifications
	after_save :send_activation_notification, if: :saved_change_to_approved?

	delegate :tier, to: :category

	def has_role? role
		self.role.eql? role
	end

	def has_tier? tier
		self.tier.eql? tier
	end

	def approve
		self.approved = true
		save!
	end

	# Devise override
	def active_for_authentication?
		super && approved?
	end

	def inactive_message
		approved? ? super : :not_approved
	end

	###

	private

		def assign_role
			self.role ||= ROLE_USER
		end

		def approve_if_admin
			self.approved = true if has_role? ROLE_ADMIN
		end

		def password_complexity
			return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,13}$/
			errors.add :password, I18n.t('devise.passwords.invalid')
		end

		def send_notifications
			UserMailer.with(user: self).acknowledge_user_of_sign_up.deliver_later
			UserMailer.with(user: self).notify_admin_after_sign_up.deliver_later
		end

		def send_activation_notification
			UserMailer.with(user: self).acknowledge_user_of_activation.deliver_later if approved?
		end
end
