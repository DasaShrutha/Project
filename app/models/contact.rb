class Contact < ApplicationRecord
	after_create :send_notifications

	private

		def send_notifications
			ContactMailer.with(contact: self).acknowledge_user.deliver_later
			ContactMailer.with(contact: self).notify_admin.deliver_later
		end
end
