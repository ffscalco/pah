module Pah
  class Commands
    class Help < Base
      BANNER = <<-HEREDOC
Usage: pah <project_name> Creates a new rails application using project_name
           [--version|-v] Prompts the pah, rails and ruby version
           [--verbose] Ouputs in verbose mode
      HEREDOC

      def run(*)
        puts BANNER
      end

    end
  end
end
