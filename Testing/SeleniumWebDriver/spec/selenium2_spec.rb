require "selenium-webdriver"

describe "Getting started with Selenium WebDriver using Ruby" do

    around(:example, do_setup: true) do |the_test|
        puts "Around hook (before running the test)"
        the_test.run
        puts "Around hook (after running the test)"
    end
    
    before(:example, do_setup: true) do
        puts "Inside before hook"
    end
    
    after(:example, do_setup: true) do
        puts "Inside after hook"
    end
    
    context "Given ABC", do_setup: true do
        puts "###"
        context "When 123" do
            puts "---"
            it "Then XYZ" do
                puts "..."
            end
        end
    end
    
    it "Firefox start and close" do
        @driver = Selenium::WebDriver::for :firefox
        @driver.manage.timeouts.implicit_wait = 30
        @driver.get("https://www.google.com")
        @driver.close
    end

    it "Chrome start and close" do
#        @options = Selenium::WebDriver::Chrome::Options.new
 #       @options.add_argument("--headless")
        @driver = Selenium::WebDriver::for :chrome
        #, options: @options
        @driver.manage.timeouts.implicit_wait = 30
        @driver.get("https://www.bing.com")
        @driver.close
    end

end