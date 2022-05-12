begin
	::Configuration.all.each do |configuration|
		ENV[configuration.key] = configuration.value
	end
rescue
	puts 'Migrations pending for Configuration'
end