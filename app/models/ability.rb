class Ability
	include CanCan::Ability

	def initialize(user)
		reset_access

		if user.present?
			if user.has_role? User::ROLE_ADMIN
				can :manage, :all
				can :access, :rails_admin
				can :read, :dashboard
			end

			if user.has_tier? Users::Tier.find_by name: 'Tier 1'
				reset_access
				load_tier_1_access
			end

			if user.has_tier? Users::Tier.find_by name: 'Tier 2'
				reset_access
				load_tier_1_access
				load_tier_2_access
			end
		end
	end

	def reset_access
		cannot :manage, :datum
		cannot :search, :sequenceserver
	end

	def load_tier_1_access
		can :read, :datum
		can :refresh, :datum
		can :search, :sequenceserver
	end

	def load_tier_2_access
		can :create, :datum
	end
end
