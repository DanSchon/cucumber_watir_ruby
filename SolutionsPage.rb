require "./NavigationBar"
require "./BasePage"

class SolutionsPage < BasePage

	attr_reader :navigation_bar

	def initialize(browser)
		@browser = browser
		@navigation_bar = NavigationBar.new(browser)
	end	

	def retrieve_http_code_for_each_link()
		links = ["Work Opportunity Tax Credit","Verification Services","Research & Development Tax Credit","Sales & Use Tax Incentives","Family Medical Leave Act Tax Credit","Hurricane Disaster Zone Incentives","Cost Segregation","Other Federal & State Tax Incentives","179D Incentives"]
		
		# for each link:
		href = ""
		links.each do |link_text|
			 # wait for link to load, 

			 # retrieve href attribute of link,
			 href = @browser.link(:text, link_text).href
			 # get http status of href and print it + name of link to console
			 #http_code = get(href)

			 puts "link '" + link_text + "' has http status code of: " + http_code
		end	 
	end

end