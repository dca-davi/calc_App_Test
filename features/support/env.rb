require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'capybara/rspec'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end