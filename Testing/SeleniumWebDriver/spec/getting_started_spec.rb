require "selenium-webdriver"

describe "Getting started with Selenium WebDriver using Ruby:" do

    it "Firefox start and close" do
        @driver = Selenium::WebDriver::for :firefox
        @driver.manage.timeouts.implicit_wait = 30
        @driver.get("https://www.google.com")
        @driver.close
    end

    it "Chrome start and close" do
        @driver = Selenium::WebDriver::for :chrome
        @driver.manage.timeouts.implicit_wait = 30
        @driver.get("https://www.bing.com")
        @driver.close
    end

end