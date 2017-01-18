# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( style.css responsive.css base.css components.css font-awesome.min.css responsive.css
                                                 bsmodal.min.js jquery.countdown.min.js jquery.easydropdown.min.js jquery.flexslider-min.js jquery.isotope.min.js jquery.themepunch.revolution.min.js
                                                 jquery.themepunch.tools.min.js jquery.viewportchecker.min.js jquery.waypoints.min.js scripts.js html5shiv.js jquery-1.11.2.min.js
                                                 jquery.js jquery_ujs.js app.min.js jquery.dataTables.min.js dataTables.bootstrap.min.js bootstrap.min.js
 bootstrap.min.css AdminLTE.min.css dataTables.bootstrap.css _all-skins.min.css blue.css )
