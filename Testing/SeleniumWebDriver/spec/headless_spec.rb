require "selenium-webdriver"

describe "Selenium WebDriver headless:" do

    it "Firefox headless start and close" do
        @options = Selenium::WebDriver::Firefox::Options.new
        @options.add_argument("--headless")
        @driver = Selenium::WebDriver::for :firefox, options: @options
        @driver.manage.timeouts.implicit_wait = 30
        @driver.get("https://www.google.com")
        @driver.close
    end

    it "Chrome headless start and close" do
        @options = Selenium::WebDriver::Chrome::Options.new
        @options.add_argument("--headless")
        @driver = Selenium::WebDriver::for :chrome, options: @options
        @driver.manage.timeouts.implicit_wait = 30
        @driver.get("https://www.bing.com")
        @driver.close
    end

end