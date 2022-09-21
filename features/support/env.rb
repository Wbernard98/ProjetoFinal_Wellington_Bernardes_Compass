require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require 'pry'

Capybara.default_driver = :selenium_chrome
Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app,browser: :chrome)
end
Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :site_prism
    config.default_max_wait_time = 5
    config.app_host = 'https://front.serverest.dev'
end