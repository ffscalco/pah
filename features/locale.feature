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
    Then I have the file config/initializers/locale.rb and contents of this file should include:
      """
      I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]

      I18n.default_locale = :'pt-BR'
      I18n.locale = :'pt-BR'
      """
