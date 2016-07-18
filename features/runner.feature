@no-clobber
Feature: Run without errors

  In order to use pah, I need this to run
  without any error

  @pending
  Scenario: Running pah with heroku
    When I run `pah myapp_on_heroku` interactively
    And I type "y"
    And I type "n"
    And I type "myapp.com"
    And I type ""
    And I type "jondoe@example.com, janedoe@example.com"
    Then the output should match:
      """
      running heroku config:set SECRET_KEY_BASE=\w{120} --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku domains:add myapp.com --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku access:add jondoe@example.com --app myapponheroku
      running heroku access:add janedoe@example.com --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku config:set TZ=America/Sao_Paulo --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku addons:create heroku-postgresql --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku addons:create logentries --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku addons:create sendgrid --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku addons:create rollbar --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku addons:create newrelic --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku addons:create librato --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku config:set LIBRATO_SOURCE=myapponheroku --app myapponheroku
      """
    Then the stdout should contain:
      """
      running heroku pg:backups schedule DATABASE_URL --at 02:00 America/Sao_Paulo --app myapponheroku
      """
    Then the output should contain:
      """
      Installation finished!
      """

  Scenario: Running pah without heroku
    When I run `pah myapp_without_heroku` interactively
    And I type "n"
    Then the output should contain:
      """
      Installation finished!
      """
