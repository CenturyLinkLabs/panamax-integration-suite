require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara-webkit'

Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit
Capybara.app_host = 'http://localhost:8897'
Capybara.default_wait_time = 10

RSpec.configure do |config|
  config.include Capybara::DSL
end
