module Pah
  module Templates
    class Cleanup < Pah::Template
      def call
        git rm: 'app/views/layouts/application.html.erb -q'

        git_commit 'Remove unnecessary files left over from initial app generation.'
      end
    end
  end
end
