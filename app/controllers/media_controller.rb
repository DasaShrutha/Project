class MediaController < ApplicationController
	before_action :configure_assets
	before_action :set_medium, only: %i[show]
	before_action :configure_show_assets, only: %i[show]

	def index
		@categories = Media::Category.all
		@media = params[:category].present? ?
			         Medium.includes(:categories).where(media_categories: {id: params[:category]}) :
			         Medium.all
	end

	def show
	end

	private

		def configure_assets
			@title = 'Media'
			@stylesheets = %w( theme/instructors theme/blog )
			@javascripts = %w( theme/instructors theme/blog )
		end

		def configure_show_assets
			@title = "#{@medium.title} | Media"
			@stylesheets << 'theme/blog_single'
			@javascripts << 'theme/blog_single'
		end

		def set_medium
			@medium = Medium.find_by(id: params[:id])
		end
end
