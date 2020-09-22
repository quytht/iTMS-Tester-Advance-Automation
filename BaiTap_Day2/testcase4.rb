#Test Case 4 - Open Google.comand Print current url.
require 'selenium-webdriver'

#show size
driver = Selenium::WebDriver.for :chrome
driver.get("http://google.com")

#maximize window 
driver.manage.window.maximize
puts driver.manage.window.size
sleep 2

# Get Title of page and print it.
puts driver.current_url

driver.quit