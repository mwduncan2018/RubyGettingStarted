require "selenium-webdriver"

describe "Selenium WebDriver with RSPEC's before and after hooks:" do

    #For :context and :example, the before hooks and after hooks share state with the example.
    #For :suite, the before hooks and after hooks do NOT share state with the example.
    #Mocks are only supported with before(:example).
    #The around hook does not share state with the example. Mock frameworks cannot be used with the around hook.
    #The around hook executes before the before hooks and after the after hooks.

    #BeforeAll = before(:context) = before(:all)
    #AfterAll = after(:context) = before(:all)
    #BeforeEach = before(:example) = before() = before(:each)
    #AfterEach= after(:example) = after() = before(:each)


    before(:context) do
        puts "inside before all"
        @driver = Selenium::WebDriver::for :chrome
        @driver.manage.timeouts.implicit_wait = 30
    end
    after(:context) do
        puts "inside after all"
        @driver.close
    end
    before(:example) do
        puts "inside before each"
    end
    after(:example) do
        puts "inside after each"
    end


    context "Given I navigate to Bing" do
        it "Then ABC" do
            @driver.get("https://www.bing.com")
        end
    end

    context "Given I navigate to Amazon" do
        it "Then XYZ" do
            @driver.manage.timeouts.implicit_wait = 5
            @driver.get("https://www.amazon.com")
        end
    end

    context "Given I navigate to Google" do
        it "Then the search button is displayed" do
            @driver.get("https://www.google.com")
            @driver.find_element(:name, "btnK")
        end
    end

    context "Given I navigate to Google" do
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