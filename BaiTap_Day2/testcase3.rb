#Test Case 3 - Open Google.comand Print it's Page title.

require 'selenium-webdriver'

#show size
driver = Selenium::WebDriver.for :chrome
driver.get("http://google.com")

#maximize window 
driver.manage.window.maximize
puts driver.manage.window.size
sleep 2

# Get Title of page and print it.
puts driver.title

sleep 2 