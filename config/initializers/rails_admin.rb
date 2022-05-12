RailsAdmin.config do |config|
	### Popular gems integration

	## == Devise ==
	config.authenticate_with do
		warden.authenticate! scope: :user
	end
	config.current_user_method(&:current_user)

	## == Cancan ==
	config.authorize_with :cancan

	## == Pundit ==
	# config.authorize_with :pundit

	## == PaperTrail ==
	# config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

	### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

	## == Gravatar integration ==
	## To disable Gravatar integration in Navigation Bar set to false
	# config.show_gravatar = true

	config.main_app_name = 'LASeR'

	config.actions do
		dashboard # mandatory
		index # mandatory
		new do
			except ['About', 'Contact', 'ContactInformation']
		end
		# export
		bulk_delete do
			except ['About', 'Configuration', 'Contact', 'ContactInformation']
		end
		show
		edit do
			except ['Contact']
		end
		delete do
			except ['About', 'Configuration', 'ContactInformation']
		end
		show_in_app
		# import

		## With an audit adapter, you can add:
		# history_index
		# history_show
	end

	config.parent_controller = 'ApplicationController'

	# Home
	config.model 'About' do
		label 'About Us'
		navigation_label 'Home Page'
		include_fields :title, :description

		edit do
			field :description, :ck_editor
		end
	end

	config.model 'Contact' do
		navigation_label 'Home Page'
		include_fields :name, :email, :message, :created_at

		field :created_at do
			label 'Submitted At'
		end
	end

	config.model 'Slider' do
		label 'Banner Images'
		navigation_label 'Home Page'
		include_fields :alt_text, :attachment, :sequence
	end

	config.model 'ContactInformation' do
		label 'Contact Information'
		navigation_label 'Home Page'

		configure :display_icon do
			label 'Icon'
			searchable false
		end

		include_fields :value

		list { include_fields :contact_type, :display_icon }
		show { include_fields :display_icon }

		edit do
			include_fields :icon
		end
	end
	###

	# Publications
	config.model 'Publication' do
		navigation_label 'Publications Page'

		configure :attached do
			searchable false
		end

		include_fields :title, :description

		list do
			include_fields :attached
		end

		edit do
			include_fields :attachment
		end
	end
	###

	# Media
	config.model 'Media::Category' do
		navigation_label 'Media Page'
		parent Medium
		include_fields :name, :media

		field :media do
			inline_add false
		end
	end

	config.model 'Medium' do
		navigation_label 'Media Page'

		configure :attached do
			searchable false
		end

		include_fields :title, :description, :categories

		field :categories do
			inline_add false
		end

		list do
			include_fields :attached
		end

		edit do
			include_fields :attachment
		end
	end

	config.model 'Media::MediumCategory' do
		visible false
	end
	###

	# Data
	config.model 'Fasta' do
		label 'Fasta Files'
		navigation_label 'Data Page'

		configure :attached do
			searchable false
		end

		include_fields :name_of_contributor, :organization, :project, :location_of_sample_collection

		field :latitude_notation do
			label 'Latitude'
		end

		field :longitude_notation do
			label 'Longitude'
		end

		field :nature_of_sample, :enum do
			enum do
				Fasta::NATURE_OF_SAMPLE
			end
		end

		field :sample_source, :enum do
			enum do
				Fasta::SAMPLE_SOURCE
			end
		end

		field :temperature, :float do
			label 'Temperature (°C)'
		end

		field :salinity, :float do
			label 'Salinity (ppt)'
		end

		field :depth, :float do
			label 'Depth (m)'
		end

		include_fields :organism_present_in_sample

		field :type_of_genetic_material_sequenced, :enum do
			enum do
				Fasta::TYPE_OF_GENETIC_MATERIAL_SEQUENCED
			end
		end

		field :source_of_genetic_material, :enum do
			enum do
				Fasta::SOURCE_OF_GENETIC_MATERIAL
			end
		end

		include_fields :region_sequenced, :sequencing_technology, :phred_quality_score

		field :sequence_length do
			label 'Sequence length (bp)'
		end

		field :comments do
			label 'Any Other Details or Comments'
		end

		list do
			include_fields :attached, :user
		end

		show do
			include_fields :attached, :user
		end

		edit do
			field :attachment do
				label 'Data File (.fasta/.zip)'
			end

			field :user_id, :hidden do
				default_value do
					bindings[:view]._current_user.id
				end
			end
		end
	end
	###

	# Account Management
	config.model 'Users::Category' do
		navigation_label 'Account Management'
		parent User
		include_fields :name, :tier, :users

		field :tier do
			inline_add false
			inline_edit false
		end

		field :users do
			inline_add false
		end
	end

	config.model 'Users::Tier' do
		navigation_label 'Account Management'
		parent User
		include_fields :name, :categories

		field :categories do
			inline_add false
		end
	end

	config.model 'User' do
		navigation_label 'Account Management'
		include_fields :name, :category, :role, :approved, :email,
		               :institution, :country, :designation, :project, :potential_use_of_data

		field :category do
			inline_add false
			inline_edit false
		end

		field :role, :enum do
			enum do
				[User::ROLE_ADMIN, User::ROLE_USER]
			end
		end

		create do
			include_fields :password, :password_confirmation

			field :approved, :hidden do
				visible true

				def value
					true
				end
			end
		end

		edit do
			include_fields :password, :password_confirmation
		end
	end
	###

	# System Management
	config.model 'Configuration' do
		navigation_label 'System Management'

		configure :value_type, :enum do
			label 'Type'
			enum do
				Configuration::VALUE_TYPES.keys
			end
		end

		configure :formatted_value do
			label 'Value'
		end

		include_fields :key

		list do
			# sorting by key
			sort_by :key
			field :key do
				sort_reverse false
			end
			include_fields :formatted_value
		end

		create { include_fields :value, :value_type }
		edit { include_fields :value, :value_type }
	end
	##

	# Social Media Management
	config.model 'SocialMedium' do
		navigation_label 'Social Media Management'
		label 'Social Media Links'

		configure :display_icon do
			label 'Icon'
			searchable false
		end

		include_fields :name, :url, :position

		list { include_fields :display_icon }
		show { include_fields :display_icon }

		create { include_fields :icon }
		edit { include_fields :icon }
	end
	##

	ApplicationRecord.descendants.each do |model|
		config.model "#{model.name}" do
			exclude_fields :id, :created_at, :updated_at
		end
	end
end
