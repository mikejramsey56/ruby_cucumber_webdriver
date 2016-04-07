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

World contains module JavaScriptPageLoadHelpers.  Methods handle the case were the indicated framework is not present on the page. JavaScriptPageLoadHelpers currently contains these methods:

<h4>wait_for_jquery</h4> 
Optional arugment timeout - number of seconds to wait for jQuery activity to complete.  Default is 30 seconds.  

    wait_for_jquery
    wait_for_jquery(timeout: 20)
	
<h4>wait_for_page_load_to_complete</h4>
Optional arugment timeout - number of seconds to wait for document.readyState == "complete".  Default is 30 seconds.

    wait_for_page_load_to_complete  
    wait_for_page_load_to_complete(timeout: 60)

<h4>wait_for_angular</h4>
Optional arugment timeout - number of seconds to wait for Angular activity to complete.  Default is 30 seconds.

    wait_for_angular
    wait_for_angular(timeout: 60)

<h4>wait_for_prototype_ajax</h4>
Optional arugment timeout - number of seconds to wait for Ajax activity to complete.  Default is 30 seconds.

    wait_for_prototype_ajax
    wait_for_prototype_ajax(timeout: 60)

<h4>wait_for_Yahoo_UI</h4>
Optional arugment timeout - number of seconds to wait for YUI activity to complete.  Default is 30 seconds.

    wait_for_Yahoo_UI
    wait_for_Yahoo_UI(timeout: 60)

###cucumber.yml###

A cucumber.yml file was created in the .config directory.  It currently defines one profile **html_report**.  To execute this profile enter:

    cucumber --profile html_report

This generate the following command:

    cucumber --format progress --format html --out=features_report.html
	
The user is encouraged to add additional command line shortcuts to cucumber.yml



