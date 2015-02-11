require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module TripGuide
  class Application < Rails::Application
    config.time_zone = 'Asia/Tokyo'
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja
    config.autoload_paths += %w(#{config.root}/lib #{config.root}/lib/ext #{config.root}/lib/utils #{config.root}/app/uploaders/concerns)

    config.active_record.raise_in_transactional_callbacks = true
  end
end
