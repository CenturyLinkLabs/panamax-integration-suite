require 'rspec'
require 'capybara'
require 'capybara/dsl'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://63.128.180.11:8898'

RSpec.configure do |config|
  config.include Capybara::DSL
end
