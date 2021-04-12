require "almond"

RSpec.describe "Cashew Feature:" do

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

end
