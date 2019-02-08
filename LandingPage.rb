require "./NavigationBar"
require "./SolutionsPage"

class LandingPage 

	attr_reader :navigation_bar
	attr_reader :base_url

	def initialize(browser)
		@browser = browser
		@navigation_bar = NavigationBar.new(browser)
		@base_url = "https://taxcreditco.com/"
	end	

	def navigate()
		puts "navigate to " + @base_url
		@browser.goto @base_url
	end	

end