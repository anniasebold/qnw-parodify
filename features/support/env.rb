require 'allure-cucumber'
require 'capybara'
require 'capybara/cucumber'

require_relative 'actions'
require_relative 'helpers'

World(Actions)
World(Helpers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = 'http://parodify.qaninja.com.br'
end

AllureCucumber.configure do |config|
  config.results_directory = '/logs'
  config.clean_results_directory = true
end