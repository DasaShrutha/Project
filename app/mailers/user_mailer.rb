class UserMailer < ApplicationMailer
	before_action {@user = params[:user]}

	def acknowledge_user_of_sign_up
		mail(to: @user.email, subject: "#{ENV['WEBSITE_NAME']}: Thank you for signing up")
	end

	def notify_admin_after_sign_up
		mail(to: ENV['ADMIN_EMAIL'], subject: "#{ENV['WEBSITE_NAME']}: New user sign up")
	end

	def acknowledge_user_of_activation
		mail(to: @user.email, subject: "#{ENV['WEBSITE_NAME']}: Your account is activated")
	end
end
