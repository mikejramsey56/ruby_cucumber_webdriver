module JavaScriptPageLoadHelpers
	def wait_for_jquery(options = {})
	    wait_for("return jQuery.active;", "0", options)
	end
	
	def wait_for_page_load_to_complete(options = {})
	    wait_for("var documentState = document.readyState; return documentState;", "complete", options)
	end
	
	def wait_for_angular(options = {})
	    wait_for("return angular.element(document.body).injector().get(\'$http\').pendingRequests.length;", "0", options)
	end
	
	def wait_for_prototype_ajax(options = {})
	    wait_for("return Ajax.activeRequestCount", "0", options)
	end
	
	def wait_for_Yahoo_UI(options = {})
	    wait_for("var inProgress=0; for(var i=0; i &lt; YAHOO.util.Connect._transaction_id; i++) {if(YAHOO.util.Connect.isCallInProgress(i)) inProgress++;} return inProgress;", "0", options)
	end
	
	def wait_for(javascript_string, target_string, options = {})
	    options[:timeout] ||= 30
		wait = Selenium::WebDriver::Wait.new(options)
		expect(wait.until {
		  begin
		    outcome = page.execute_script(javascript_string)
			outcome.to_s == target_string
		  rescue Exception => e
		    true # If specified framework is not present then don't wait for it
		  end
		}).to eq true
	end
end
World(JavaScriptPageLoadHelpers)