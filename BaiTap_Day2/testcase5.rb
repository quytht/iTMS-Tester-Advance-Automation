#Test Case 5 - Open Google.comand Print Page source.
require 'selenium-webdriver'

#show size
driver = Selenium::WebDriver.for :chrome
driver.get("http://google.com")

#maximize window 
driver.manage.window.maximize
puts driver.manage.window.size
sleep 2
# hhh

#Get Page source
String pageSource = driver.getPageSource();

driver.quit
