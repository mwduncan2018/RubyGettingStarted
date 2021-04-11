require "almond"

RSpec.describe "Peanut Feature:" do

    context "Given a person is created with first name Michael and last name Duncan" do
        personMichael = Almond::Person.new("Michael", "Duncan", 39, 225000, "Principal Test Engineer")
        it "Then the full name of Michael should start with 'Mi' and end with 'can'" do
            expect(personMichael.full_name).to start_with("Mi").and end_with("can")
        end
    end

    context "Given person Matt is created with salary 180000" do
        personMatt = Almond::Person.new("Matt","Z",39,180000,"Software Engineer")
        context "And person Saray is created with salary 100000" do
            personSarah = Almond::Person.new("Sarah","F",28,100000,"Business Analyst")
            it "Then the salary of Matt should be greater than the salary of Sarah" do
                expect(personMatt.salary).to be > (personSarah.salary)
            end
            it "And the salary of Sarah should be less than the salary of Matt" do
                expect(personSarah.salary).to be < (personMatt.salary)
            end
        end
    end

    context "Given a person is under the age of 50" do
        person = Almond::Person.new("Matt","Z",39,180000,"Software Engineer")
        context "When the is_old? method is called" do
            result = person.is_old?
            it "Then false should be returned" do        
                expect(result).to eq(false)
            end        
        end
    end

    context "Given a person is over the age of 50" do
        person = Almond::Person.new("Gina","X",55,100000,"Test Engineer")
        context "When the is_old? method is called" do
            result = person.is_old?
            it "Then false should not be returned" do
                expect(result).to_not eq(false)
            end
            it "And true should be returned" do
                expect(result).to be_truthy
            end        
        end  
    end

    context "Given a person" do
        person = Almond::Person.new("Gina","X",55,100000,"Test Engineer")
        it "When the special character is set to '!', Then a SpecialCharacterError occurs" do
            expect { person.set_special_character_to("!") }.to raise_error(Almond::SpecialCharacterError)
        end    
    end

    context "Given a person is created with a salary of 50000" do
        person = Almond::Person.new("Sarah","F",24,50000,"Business Analyst")
        it "Then the salary of the person should be within 5000 of 45000" do
            expect(person.salary).to be_within(5000).of(45000)
        end
        it "And the salary of the person should be within 10000 of 60000" do
            expect(person.salary).to be_within(10000).of(60000)
        end
        it "And the salary of the person should not be within 5000 of 44000" do
            expect(person.salary).to_not be_within(5000).of(44000)
        end
    end

end
