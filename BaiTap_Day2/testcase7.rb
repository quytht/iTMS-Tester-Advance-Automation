#Test Case 7 – Input form
require 'selenium-webdriver'

#show size
driver = Selenium::WebDriver.for :chrome
driver.get("https://itmscoaching.herokuapp.com/form")

#maximize window 
driver.manage.window.maximize
puts driver.manage.window.size
sleep 2

#Textbox Fist name
textbox1 = driver.find_element(:id, "first-name")
textbox1.send_keys("ITMS")

#Textbox Last name
textbox2 = driver.find_element(:id, "last-name")
textbox2.send_keys("Coaching")

#Textbox Job 
textbox3 = driver.find_element(:id, "job-title")
textbox3.send_keys("QA")

#Radio button
radio_button = driver.find_element(id: 'radio-button-2')
radio_button.click

#Checkbox 
checkbox = driver.find_element(id: 'checkbox-1')
checkbox.click

#Dropdownlist Year of experience
option = driver.find_element(id: 'select-menu')
#puts option.inspect
select_option = Selenium::WebDriver::Support::Select.new(option)
select_option.select_by(:value, '2')

#Datepicker Select Date 27/10/2025
date = driver.find_element(id: 'datepicker')
date.send_keys('27/10/2025')

#Button Submit

button = driver.find_element(:class, 'btn-primary')
button.click

sleep 5
driver.quit
