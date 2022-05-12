require 'sidekiq/web'

Rails.application.routes.draw do
	default_url_options host: ENV['HOST_URL']

	devise_for :users, controllers: {sessions: 'users/sessions',
	                                 registrations: 'users/registrations'}

	mount LetterOpenerWeb::Engine, at: '/letter_opener', as: 'letter_opener' if Rails.env.development?

	authenticate :user, -> (user) { user.has_role? User::ROLE_ADMIN } do
		mount RailsAdmin::Engine, at: '/admin', as: 'rails_admin'
		mount Sidekiq::Web, at: '/sidekiq', as: 'sidekiq'
	end

	authenticate :user do
		if Rails.env.production?
			SequenceServer.init
			mount SequenceServer, at: ENV['SEQUENCESERVER_MOUNT_PATH'], as: 'sequenceserver'
			get "#{ENV['SEQUENCESERVER_MOUNT_PATH']}/get_sequence/", to: 'sequence_server#get_sequence'
			get "#{ENV['SEQUENCESERVER_MOUNT_PATH']}/download/", to: 'sequence_server#download'
		end
	end

	root to: 'home#index'

	resources :contacts, only: %i[create]
	resources :data, only: %i[index show create] do
		collection do
			get :refresh
		end
	end
	resources :home, only: %i[index]
	resources :media, only: %i[index show]
	resources :publications, only: %i[index]
end
