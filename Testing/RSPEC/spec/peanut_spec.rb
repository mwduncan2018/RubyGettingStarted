require "almond"

RSpec.describe "Peanut Feature:" do

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
            it "Then false should not be returned and true should be returned" do
                expect(result).to_not eq(false)
                expect(result).to eq(true)
            end        
        end  
    end

    context "Given a person" do
        person = Almond::Person.new("Gina","X",55,100000,"Test Engineer")
        it "When the special character is set to '!', Then a SpecialCharacterError occurs" do
            expect { person.set_special_character_to("!") }.to raise_error(Almond::SpecialCharacterError)
        end    
    end

end
