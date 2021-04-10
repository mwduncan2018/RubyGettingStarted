module Foobar

    class Person
        #Adds getters and setters
        attr_accessor :first_name
        attr_accessor :last_name
        attr_accessor :age
        attr_accessor :salary
        attr_accessor :profession

        #Adds a setter
        attr_writer :special_character
        
        def initialize(first_name, last_name, age, salary, profession)
            @first_name = first_name
            @last_name = last_name
            @age = age
            @salary = salary
            @profession = profession
            self.special_character = "..."
        end

        def pretty_print
            puts self.first_name + " " + self.last_name + @special_character + self.salary.to_s + ", " + self.profession + @special_character
        end
        
        def is_old?
            if self.age > 49
                true
            else
                false
            end
        end


    end

end
