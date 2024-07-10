require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BibliotecaWeb
  class Application < Rails::Application
    config.load_defaults 7.0
    config.i18n.default_locale = :'pt-BR'
    config.i18n.available_locales = [:en, :'pt-BR']
  end
end
