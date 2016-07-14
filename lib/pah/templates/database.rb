module Pah
  module Templates
    class Database < Pah::Template
      def call
        copy_static_file 'config/database.yml'
        gsub_file 'config/database.yml', /PROJECT/, Pah.configuration.app_name
        git add: 'config/database.yml'
        git_commit 'Add config/database.yml.'

        run 'bundle exec rake db:create db:migrate'

        git add: 'db/schema.rb'
        git_commit 'Create database, adding db/schema.rb.'
      end
    end
  end
end
