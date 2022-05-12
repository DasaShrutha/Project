class HomeController < ApplicationController
	before_action :configure_assets

	def index
		@sliders = Slider.all.order(sequence: :asc)
		@about = About.first
		@contact ||= Contact.new
	end

	private

		def configure_assets
			@title = 'Home'
			@stylesheets = %w( theme/regular theme/contact )
			@javascripts = %w( theme/custom theme/regular theme/contact )
		end
end
