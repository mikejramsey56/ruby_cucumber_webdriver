Feature: Hello World

@helloworld
Scenario: Hello google
  Given I am on the google search page
  When I search for "hello world"
  Then there should be a result for "www.helloworld.com/"