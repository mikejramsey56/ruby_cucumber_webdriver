require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'selenium-webdriver'

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

=begin
resynchronize is no longer a sup-port option
TO-DO: Write wait for AJAX helpers. For jQuery, javascript wait for jQuery.active == 0
module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end
=end

#World(Capybara::DSL, Helpers)
World(Capybara::DSL)