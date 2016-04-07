Given(/^I am on the Angular home page$/) do
  visit "https://angularjs.org/"
  wait_for_angular
  wait_for_page_load_to_complete
  page.driver.browser.manage.delete_all_cookies
  page.driver.browser.manage.window.maximize
  wait_for_angular
  wait_for_page_load_to_complete
end

When(/^I visit the code school page$/) do
  page.find(".learn-link").click
end

Then(/^I have an option to start a course$/) do
  wait_for_angular
  wait_for_page_load_to_complete
  page.find(:xpath, "//span[contains(text(),'Start Course')]/parent::a").click
  wait_for_angular
  wait_for_page_load_to_complete
end