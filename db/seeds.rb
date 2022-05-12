# Host config
Configuration.where(key: 'HOST_URL').first_or_create!(value: 'laser.ase.ntu.edu.sg')
# Website Title config
Configuration.where(key: 'WEBSITE_NAME').first_or_create!(value: 'LASeR')
Configuration.where(key: 'WEBSITE_SUBTITLE').first_or_create!(value: 'Long Amplicon Sequence Repository')
# SMTP Config
Configuration.where(key: 'SMTP_ADDRESS').first_or_create!(value: 'smtp.sendgrid.net')
Configuration.where(key: 'SMTP_PORT').first_or_create!(value: '587')
Configuration.where(key: 'SMTP_USERNAME').first_or_create!(value: 'apikey')
Configuration.where(key: 'SMTP_PASSWORD').first_or_create!(value: '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')
# Email config
Configuration.where(key: 'ADMIN_EMAIL').first_or_create!(value: 'probsoltechnology@gmail.com')
Configuration.where(key: 'DEFAULT_FROM_EMAIL').first_or_create!(value: 'admin@ntu.org')
# reCaptcha config
Configuration.where(key: 'RECAPTCHA_SITE_KEY').first_or_create!(value: '6LcfcHUUAAAAAMCWxwgrGF25be_8q7v6lyAvT77p')
Configuration.where(key: 'RECAPTCHA_SECRET_KEY').first_or_create!(value: '6LcfcHUUAAAAAN3ZjWJarY7_2G4nWLQsP9SusU94')

tier = Users::Tier.where(name: 'Tier 1').first_or_create!
Users::Category.where(name: 'Non-NTU Staff', tier: tier).first_or_create!

tier = Users::Tier.where(name: 'Tier 2').first_or_create!
['Student', 'Researcher', 'Professor', 'Admin/Management'].each {|category_name| Users::Category.where(name: category_name, tier: tier).first_or_create!}

About.where(title: 'About Us').first_or_create!(description: 'Sample Description')

User.where(
	name: 'NTU Admin',
	category: Users::Category.find_by(name: 'Admin/Management'),
	role: User::ROLE_ADMIN,
	email: 'admin@ntu.org',
	institution: 'NTU',
	designation: 'Administrator',
	country: 'Singapore',
	project: 'LASeR',
	potential_use_of_data: 'Open Source'
	).first_or_create!(password: 'Admin@ntu123', password_confirmation: 'Admin@ntu123')

if Slider.all.blank?
	slider = Slider.new(alt_text: 'Slider 1', sequence: 1)
	slider.attachment.attach(io: File.open(Rails.root.join('public', '1920x1080.png')), filename: '1920x1080.png')
	slider.save!
end

SocialMedium.where(name: 'facebook').first_or_create!(icon: 'fa-facebook', url: '#', position: 1)
SocialMedium.where(name: 'instagram').first_or_create!(icon: 'fa-instagram', url: '#', position: 2)
SocialMedium.where(name: 'twitter').first_or_create!(icon: 'fa-twitter', url: '#', position: 3)

ContactInformation.where(contact_type: 'phone').first_or_create(icon: 'fa-phone', value: '+65 6790 9845')
ContactInformation.where(contact_type: 'email').first_or_create(icon: 'fa-envelope', value: 'flauro@ntu.edu.sg')
ContactInformation.where(contact_type: 'address').first_or_create(icon: 'fa-map-signs', value: 'Asian School of the Environment, Nanyang Technological University, N1.1-B2-02, 50 Nanyang Avenue, Singapore 639798')
