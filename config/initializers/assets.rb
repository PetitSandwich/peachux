# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"
Rails.application.config.assets.paths << Rails.root.join("node_modules")
Cloudinary.config do |config|
  config.cloud_name = 'peachux'
  config.api_key = '355851215977576'
  config.api_secret = 'WZ6pWQcmIDnHA_5UYzrustkNJBs'
  config.secure = true
end
# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
