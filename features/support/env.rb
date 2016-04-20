require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'page-object'

Capybara.run_server = false
#Capybara.default_driver = :selenium
Capybara.default_driver = :firefox
Capybara.register_driver :firefox do |app|
  options = {
  :js_errors => true,
  :timeout => 360,
  :debug => false,
  :inspector => false,
  }
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
 end

Capybara.default_selector = :css
Capybara.default_max_wait_time = 30
World(Capybara::DSL, PageObject)