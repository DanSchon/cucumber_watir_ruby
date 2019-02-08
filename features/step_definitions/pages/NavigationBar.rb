class NavigationBar 

	def initialize(browser)
		@browser = browser
	end	

	def click_solutions_tab()
		puts "click on solutions tab once it is visible"
		@browser.link(text: "Solutions").wait_until(:timeout => 10, &:present?).click
	end

end