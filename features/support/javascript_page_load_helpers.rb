module JavaScriptPageLoadHelpers
	def wait_for_jquery(options = {})
	    options[:timeout] ||= 30
	    wait = Selenium::WebDriver::Wait.new(options)
		
		expect(wait.until {
		  begin
			page.execute_script("return jQuery.active;") == 0
		  rescue
		    true # If no jQuery then don't wait for it
		  end
		}).to eq true
	end
	
	def wait_for_page_load_to_complete(options = {})
	    options[:timeout] ||= 30
		wait = Selenium::WebDriver::Wait.new(options)
		expect(wait.until {
		  page.execute_script("var documentState = document.readyState; return documentState;") == "complete"
		}).to eq true
	end
end
World(JavaScriptPageLoadHelpers)