require "selenium-webdriver"

describe "Selenium WebDriver with RSPEC's around hook:" do

    around(:example, do_setup: true) do |scenario|
        @driver = Selenium::WebDriver::for :firefox
        @driver.manage.timeouts.implicit_wait = 30
        scenario.run
        @driver.close
    end
    
    context "Given I navigate to Google", do_setup: true do
        it "Then the search button is displayed" do
            @driver.get("https://www.google.com")
            @driver.find_element(:name, "btnK")
        end
    end

    context "Given I navigate to Google", do_setup: true do
        context "When I search for 'Selenium WebDriver'" do
            it "Then search results are displayed" do
                @driver.get("https://www.google.com")
                @driver.find_element(:name, "q").send_keys("Selenium webdriver")
                @driver.find_element(:name, "btnK").submit
                wait = Selenium::WebDriver::Wait.new(:timeout => 30)
                wait.until { @driver.title.include? "Selenium webdriver - Google Search" }
                expect(@driver.title).to eq("Selenium webdriver - Google Search")
            end
        end
    end

end