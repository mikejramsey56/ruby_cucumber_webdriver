Feature: Work with prototype JavaScript framework

@prototype
Scenario: Vist the prototype home and explore learning
    Given I am on the prototype js home
	When I visit "Docs & tutorials"
	Then I can learn about "Defining classes and inheritance"
	
@prototype2
Scenario: Try a different page
    Given I am on the prototype ajax page
	When I expand Ajax.PeriodicalUpdater
	Then the Ajax.PeriodicalUpdater class page is displayed