require_relative "./NavigationBar"
require 'net/http'

class SolutionsPage 

	attr_reader :navigation_bar

	def initialize(browser)
		@browser = browser
		@navigation_bar = NavigationBar.new(browser)
	end	

	def retrieve_http_code_for_each_link()		

		links = @browser.links(css: 'div > h1 > a')
		links.each do |link|
			link.wait_until(:timeout => 10, &:present?)
			uri = URI(link.href)
			res = Net::HTTP.get_response(uri)
			code = res.code
			puts "the code for " + link.text + " is: " + code
		end

	end

end