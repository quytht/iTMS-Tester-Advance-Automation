#Test Case 6 – Get page title after searching with Google.com
require 'selenium-webdriver'

#show size
driver = Selenium::WebDriver.for :chrome
driver.get("http://google.com")

#maximize window 
driver.manage.window.maximize
puts driver.manage.window.size
sleep 2

textbox = driver.find_element(:name, "q")
textbox.send_keys("ITMS Coaching")

puts driver.title 

sleep 5 
driver.quit

