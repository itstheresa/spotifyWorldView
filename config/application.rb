require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SpotifyWorldView
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    RSpotify::authenticate("b9e86650cc7a4733a7e24180f5b9014a", "e47d7214bf674d5586916f70b0bc68bd")
  end
end
