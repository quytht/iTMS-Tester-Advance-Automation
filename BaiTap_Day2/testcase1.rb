# Test case 1: Launch browser and Open Google.com
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get("http://google.com")
sleep 2
driver.quit
