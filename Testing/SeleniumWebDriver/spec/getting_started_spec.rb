require "selenium-webdriver"

describe "Getting started with Selenium WebDriver using Ruby" do

    it "Firefox start and close" do
        @driver = Selenium::WebDriver::for :firefox
        @driver.manage.timeouts.implicit_wait = 30
        @driver.get("https://www.google.com")
        @driver.close
    end

    it "Chrome start and close" do
        @options = Selenium::WebDriver::Chrome::Options.new
        @options.add_argument("--headless")
        @driver = Selenium::WebDriver::for :chrome, options: @options
        @driver.manage.timeouts.implicit_wait = 30
        @driver.get("https://www.bing.com")
        @driver.close
    end

end