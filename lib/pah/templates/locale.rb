module Pah
  module Templates
    class Locale < Pah::Template
      def call
        copy_static_file 'config/locales/pt-BR.yml'
        copy_static_file 'config/locales/app.pt-BR.yml'
        copy_static_file 'config/initializers/locale.rb'

        git add: 'config/locales/*.yml config/initializers/locale.rb'

        git_commit 'Add pt-BR locale configuration.'

        time_zone_config = <<TIME_ZONE
    config.time_zone = ENV.fetch('TZ', 'Brasilia')

TIME_ZONE

        inject_into_file 'config/application.rb', time_zone_config,  before: '    # Settings in config/environments/* take precedence over those specified here.', verbose: false

        git add: 'config/application.rb'
        git_commit 'Add time_zone config.'
      end
    end
  end
end
