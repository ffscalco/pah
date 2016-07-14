@no-clobber
Feature: Locale
  Background:
    Given I have created the app "myapp" with pah

  Scenario: Have correct files
    Then I have a config/locales/pt-BR.yml
    Then I have a config/locales/app.pt-BR.yml
    Then I have a config/initializers/locale.rb
    Then I have the file config/application.rb and contents of this file should include:
      """
      config.time_zone = ENV.fetch('TZ', 'Brasilia')
      """
