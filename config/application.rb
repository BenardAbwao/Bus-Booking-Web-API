require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BusBookingWebApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.api_only = true

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        #origins "http://localhost:4000", "http://localhost:3000", "https://bus-booking-app-alpha.vercel.app"
        origins "*"
        resource "*",
         headers: :any,
        # credentials: true,
          methods: [:get, :post, :patch, :delete]
      end
     end
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore
    #config.action_dispatch.cookies_same_site_protection = :strict
    config.session_store :cookie_store, key: '_interslice_session'
  # :same_site => :none, :secure => :true
   config.middleware.use config.session_store, config.session_options
   config.middleware.use Rack::MethodOverride
   config.middleware.use ActionDispatch::Flash
   

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    
  end
end
