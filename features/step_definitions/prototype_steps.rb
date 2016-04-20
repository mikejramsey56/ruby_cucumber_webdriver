Given(/^I am on the prototype js home$/) do
  visit "http://prototypejs.org/"
  
  wait_for_prototype_ajax
  wait_for_page_load_to_complete
  
  page.driver.browser.manage.delete_all_cookies
  page.driver.browser.manage.window.maximize
end

When(/^I visit "([^"]*)"$/) do |link_description|
  neat_link = page.find(:xpath, "//a/span[contains(text(),'" + link_description + "')]/parent::a")
  neat_link.click
end

Then(/^I can learn about "([^"]*)"$/) do |link_description|
  wait_for_prototype_ajax
  wait_for_page_load_to_complete
  neat_link = page.find(:xpath, "//a[contains(text(),'" + link_description + "')]")
  wait_for_prototype_ajax
  wait_for_page_load_to_complete
end