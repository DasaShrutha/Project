# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.coffee, application.sass, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( theme/blog.js theme/blog.scss )
Rails.application.config.assets.precompile += %w( theme/blog_single.js theme/blog_single.scss )
Rails.application.config.assets.precompile += %w( theme/contact.js theme/contact.scss )
Rails.application.config.assets.precompile += %w( theme/course.js theme/course.scss )
Rails.application.config.assets.precompile += %w( theme/courses.js theme/courses.scss )
Rails.application.config.assets.precompile += %w( theme/custom.js theme/home.scss )
Rails.application.config.assets.precompile += %w( theme/instructors.js theme/instructors.scss )
Rails.application.config.assets.precompile += %w( theme/regular.js theme/regular.scss )

Rails.application.config.assets.precompile += %w( highmaps.coffee )

Rails.application.config.assets.precompile += %w( video-js.swf vjs.eot vjs.svg vjs.ttf vjs.woff )
