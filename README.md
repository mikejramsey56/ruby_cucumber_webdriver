##rubyCucumberProject##

Basic starter template for a 
<ul>
<li>cucumber
<li>rspec
<li>capybara
<li>selenium-webdriver
</ul>
project.

Download the zip file and expand into whatever folder you want.  Rename the high level project folder to your project's name.  Run 

    bundle install

to install the necessary ruby gems.

###JavaScript and page load support###

World contains module JavaScriptPageLoadHelpers.  It currently contains two methods:

<h4>wait_for_jquery</h4> 
Optional arugment timeout - number of seconds to wait for jQuery activity to complete.  Default is 30 seconds.  
E.g. wait_for_jquery(timeout: 20)
<h4>wait_for_page_load_to_complete</h4>
<Optional arugment timeout - number of seconds to wait for document.readyState == "complete".  Default is 30 seconds.  
E.g. wait_for_page_load_to_complete(timeout: 60)

The plan is to add additional methods to support waiting for JavaScript to complete for the **Angular** and **Prototype** (Ajax) frameworks



