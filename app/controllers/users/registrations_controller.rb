class Users::RegistrationsController < Devise::RegistrationsController
	respond_to :json

	def create
		build_resource(sign_up_params)
		resource.save if verify_recaptcha(model: resource, attribute: 'Sign Up')
		yield resource if block_given?

		if resource.persisted?
			if resource.active_for_authentication?
				sign_up(resource_name, resource)
				if request.xhr?
					return render json: {success: true, data: {message: I18n.t("devise.registrations.signed_up_but_#{resource.inactive_message}")}}
				else
					set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
					respond_with resource, location: after_sign_up_path_for(resource)
				end
			else
				expire_data_after_sign_in!
				if request.xhr?
					return render json: {success: true, data: {message: I18n.t("devise.registrations.signed_up_but_#{resource.inactive_message}")}}
				else
					set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
					respond_with resource, location: after_inactive_sign_up_path_for(resource)
				end
			end
		else
			clean_up_passwords resource
			set_minimum_password_length
			if request.xhr?
				return render json: {success: false, data: {errors: Hash[resource.errors.messages.map {|field, error| [field.to_s.titleize, error]}]}}
			else
				respond_with resource
			end
		end
	end
end
