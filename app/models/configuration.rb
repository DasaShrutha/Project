class Configuration < ApplicationRecord
	VALUE_TYPES = {
		text: 'text',
		password: 'password'
	}

	validates :key, presence: true
	validates :value, presence: true

	attr_readonly :key

	before_create :transform_key
	after_save :update_env

	alias_attribute :name, :key

	def formatted_value
		if value_type.eql? VALUE_TYPES[:password]
			value.length.times.map { '●' }.join
		else
			value
		end
	end

	private

		def transform_key
			self.key = key.parameterize.underscore.upcase
		end

		def update_env
			ENV[key] = value
		end
end
