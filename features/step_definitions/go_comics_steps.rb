Given(/^I am on the GOCOMICS comics page$/) do
  visit 'http://www.gocomics.com/explore/comics'
  wait_for_jquery(timeout: 20)
  wait_for_page_load_to_complete(timeout: 20)
end

When(/^I select "(.*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the "(.*)" comic strip is displayed$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end