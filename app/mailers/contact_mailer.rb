class ContactMailer < ApplicationMailer
	before_action {@contact = params[:contact]}

	def acknowledge_user
		mail(to: @contact.email, subject: "#{ENV['WEBSITE_NAME']}: Thank you for contacting")
	end

	def notify_admin
		mail(to: ENV['ADMIN_EMAIL'], subject: "#{@contact.name}: New contact")
	end
end
