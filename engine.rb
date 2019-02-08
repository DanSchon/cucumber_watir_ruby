require 'watir' # 'watir-webdriver' is deprecated
require 'selenium-webdriver'

require_relative "./features/step_definitions/pages/LandingPage"
require_relative "./features/step_definitions/pages/SolutionsPage"

Selenium::WebDriver::Chrome.driver_path= File.join(File.dirname(__FILE__), "/features/step_definitions/executables/chromedriver")
browser = Watir::Browser.new :chrome
browser.window.maximize

landing_page = LandingPage.new(browser)
landing_page.navigate()
landing_page.navigation_bar.click_solutions_tab()
solutions_page = SolutionsPage.new(browser)
solutions_page.retrieve_http_code_for_each_link()