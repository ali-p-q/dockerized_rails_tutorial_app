require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Load dotenv only in development or test environment
Dotenv::Railtie.load if %w[development test].include?(ENV['RAILS_ENV'])

POSTGRES_HOST = ENV.fetch('POSTGRES_HOST', nil)
POSTGRES_USER = ENV.fetch('POSTGRES_USER', nil)
POSTGRES_PASSWORD = ENV.fetch('POSTGRES_PASSWORD', nil)

module SampleApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults(7.0)

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Configure localization
    config.i18n.load_path += Dir[Rails.root.join('config/locales/*.{rb,yml}')]
    config.i18n.default_locale = :en
  end
end
