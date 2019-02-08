require 'watir' # 'watir-webdriver' is deprecated
require 'selenium-webdriver'

require "./LandingPage"
require "./SolutionsPage"

Selenium::WebDriver::Chrome.driver_path= File.join(File.dirname(__FILE__), "/executables/chromedriver")
browser = Watir::Browser.new :chrome


landing_page = LandingPage.new(browser)
landing_page.navigate()
# landing_page.navigation_bar.click_solutions_tab()
# solutions_page = SolutionsPage.new(driver)
# solutions_page.retrieve_http_code_for_each_link()