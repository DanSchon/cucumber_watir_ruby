require "./BasePage"

class NavigationBar < BasePage

	def initialize(browser)
		@browser = browser
	end	

	def click_solutions_tab()
		puts "wait for solutions tab to be visible"
		puts "click on solutions tab"
	end

end