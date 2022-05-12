class PublicationsController < ApplicationController
	before_action :configure_assets

	def index
		@publications = Publication.all.order(created_at: :desc)
	end

	private

		def configure_assets
			@title = 'Publications'
			@stylesheets = %w( theme/courses )
			@javascripts = %w( theme/courses )
		end
end
