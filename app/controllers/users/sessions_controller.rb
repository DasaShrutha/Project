class Users::SessionsController < Devise::SessionsController
	respond_to :json

	skip_before_action :require_no_authentication

	def create
		self.resource = warden.authenticate!(auth_options)
		sign_in(resource_name, resource)
		yield resource if block_given?

		if request.xhr?
			return render json: {success: true, data: {message: I18n.t('devise.sessions.signed_in')}}
		else
			set_flash_message!(:notice, :signed_in)
			respond_with resource, location: after_sign_in_path_for(resource)
		end
	end

	def failure
		respond_to do |format|
			format.json {
				render json: {success: false, data: {errors: [I18n.t('devise.failure.invalid', authentication_keys: 'email')]}}
			}
			format.html {
				self.resource = resource_class.new(sign_in_params)
				clean_up_passwords(resource)
				yield resource if block_given?
				set_flash_message!(:alert, :invalid, authentication_keys: 'email')
				respond_with resource, serialize_options(resource), location: user_session_path
			}
		end
	end

	protected

		def auth_options
			{scope: resource_name, recall: "#{controller_path}#failure"}
		end
end
