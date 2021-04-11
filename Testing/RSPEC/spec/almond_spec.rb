require "almond"

RSpec.describe "Almond Scenarios:" do

    #'it' can be considered a spec, a test, or an example
    it "Given a person is under the age of 50, when the is_old? method is called, then false should be returned" do
        person = Almond::Person.new("Matt","Z",39,180000,"Software Engineer")
        result = person.is_old?
        expect(result).to(eq(false))
    end

    it "Given a person is over the age of 50, when the is_old? method is called, then true should be returned" do
        person = Almond::Person.new("Gina","X",55,100000,"Test Engineer")
        expect(person.is_old?).to(eq(true))
    end

    it "Given a person, when the special character is set to '!', then a SpecialCharacterError occurs" do
        person = Almond::Person.new("Gina","X",55,100000,"Test Engineer")
        #expect { p.set_special_character_to("!") }
        expect { person.set_special_character_to("!") }.to raise_error(Almond::SpecialCharacterError)
    end

end
