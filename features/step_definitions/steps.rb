require 'watir' # 'watir-webdriver' is deprecated
require 'selenium-webdriver'

require_relative "./pages/LandingPage"
require_relative "./pages/SolutionsPage"

Selenium::WebDriver::Chrome.driver_path= File.join(File.dirname(__FILE__), "/executables/chromedriver")
browser = Watir::Browser.new :chrome
browser.window.maximize
landing_page = LandingPage.new(browser)
solutions_page = SolutionsPage.new(browser)


Given("go to website") do
	landing_page.navigate()
end

Then("click on the Solutions tab and get http codes from each link in this page") do
	landing_page.navigation_bar.click_solutions_tab()
	solutions_page.retrieve_http_code_for_each_link()
end