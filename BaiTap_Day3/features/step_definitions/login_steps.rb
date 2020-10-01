Given('the login page is opened successfully') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.timeouts.implicit_wait = 3
    @driver.get('http://the-internet.herokuapp.com/login')
  end
  
  When('user input username {string} and password {string}') do |string, string2|
     @driver.manage.window.resize_to(650, 701)
     @driver.find_element(:id, 'username').click
     @driver.find_element(:id, 'username').send_keys('string')
     @driver.find_element(:id, 'password').click
     @driver.find_element(:id, 'password').send_keys('string2')
     @driver.find_element(:id, 'password').send_keys(:enter)
  end
  
  Then('show message {string}') do |string|
    expect(@driver.find_element(:id, 'flash').text).to eq('You logged into a secure area!\\\\n×')
  end

  Given('the login page is opened successfully') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.timeouts.implicit_wait = 3
    @driver.get('http://the-internet.herokuapp.com/login')
  end
  
  When('user input username {string} and password {string}') do |string, string2|
    @driver.manage.window.resize_to(650, 701)
    @driver.find_element(:id, 'username').click
    @driver.find_element(:id, 'username').send_keys('string')
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys('string2')
    @driver.find_element(:id, 'password').send_keys(:enter)
  end
  
  Then('show message {string}') do |string|
    expect(@driver.find_element(:id, 'flash').text).to include('Your password is invalid!')
  end