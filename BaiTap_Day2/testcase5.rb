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
pageSource = driver.page_source
puts "page source: #{pageSource}"

sleep 2 

puts "Loaded pagesource successfully"

sleep 2
driver.quit
