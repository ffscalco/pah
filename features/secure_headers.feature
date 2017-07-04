@no-clobber
Feature: Secure Headers
  Background:
    Given I have created the app "myapp" with pah

  Scenario: Have correct files
    Then I have a config/initializers/secure_headers.rb
    Then I have the file config/initializers/secure_headers.rb and contents of this file should include:
      """
      ::SecureHeaders::Configuration.configure do |config|
      """
