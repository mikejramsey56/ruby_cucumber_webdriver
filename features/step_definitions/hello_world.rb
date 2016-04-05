Given(/^I am on the google search page$/) do
  visit 'http://www.google.com/advanced_search?hl=en'
end

When(/^I search for "(.*)"$/) do |query|
  fill_in 'as_q', :with => query
  click_button 'Search'
end

Then /^there should be a result for "(.*)"$/ do |expected_result|
  results = all('cite').map { |el| el.text }
  results.should include expected_result
end