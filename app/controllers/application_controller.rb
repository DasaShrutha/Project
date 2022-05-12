class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	rescue_from CanCan::AccessDenied do |exception|
		redirect_to main_app.root_url, alert: exception.message
	end

	protected

		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up, keys: [
				:name, :users_category_id, :institution, :country, :designation, :project, :potential_use_of_data
			])
		end

		def after_sign_in_path_for(resource_or_scope)
			main_app.root_path
		end

		def after_sign_up_path_for(resource)
			main_app.root_path
		end

		def after_sign_out_path_for(resource_or_scope)
			main_app.root_path
		end
end
