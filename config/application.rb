require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Eventsandmoments
  class Application < Rails::Application
    config.assets.paths << Rails.root.join('vendor', 'assets', 'images', 'stylesheets','javascripts', 'fonts')
    config.assets.precompile += %w( .svg .eot .woff .ttf .png)
    config.eager_load_paths += [
      "app/client",
      "app/services"
    ]
  end
end

