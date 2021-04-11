require "almond"

RSpec.describe "Cashew Feature:" do

    around(:example, do_setup: true) do |the_test|
        puts "Around hook (before running the test)"
        the_test.run
        puts "Around hook (after running the test)"
    end
    
    before(:example) do
        puts "Inside before hook"
    end

    after(:example) do
        puts "Inside after hook"
    end

    context "Given a person is created with first name Michael and last name Duncan" do
        puts "\t\t\t\t\t\t\tInside given context"
        context "When a person has their salary modified" do
            puts "\t\t\t\t\t\t\tInside when context"
            it "Then the full name of Michael should start with 'Mi' and end with 'can'" do
                puts "\t\t\t\t\t\t\tInside then context"
            end
        end
    end

end
