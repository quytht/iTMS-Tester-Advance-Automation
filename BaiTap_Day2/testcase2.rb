#Test Case 2 - Open Google.comand maximize browser window.

require 'selenium-webdriver'

#show size
driver = Selenium::WebDriver.for :chrome
driver.get("http://google.com")
puts driver.manage.window.size

sleep 2 
#resize windown
driver.manage.window.resize_to(500, 500)
puts driver.manage.window.size

sleep 2
#maximize window 
driver.manage.window.maximize
puts driver.manage.window.size

sleep 2
driver.quit
