module Pah
  module Templates
    class RackDeflater < Pah::Template
      def call
        file = 'config/application.rb'
        inject = "    config.middleware.use Rack::Deflater\n\n"
        options = { before: '    # Settings in config/environments/* take precedence over those specified here.', verbose: false }

        inject_into_file file, inject, options

        git add: 'config/application.rb'
        git_commit 'Add Rack::Deflater middleware.'
      end
    end
  end
end
