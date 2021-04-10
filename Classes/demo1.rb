class Person
    #Adds getters and setters
    attr_accessor :name
    attr_accessor :age

    #Adds a setter
    attr_writer :special_character
    
    #Adds a getter
    attr_reader :pretty_print

    def initialize(name, age)
        #self uses the getters and setters
        self.name = name
        self.age = age
        @pretty_print = @name + @age.to_s
    end

    def update()
        #Use @ to directly access the instance data
        @pretty_print = self.name + self.age.to_s + @special_character.to_s if @special_character
        self
    end

end

person = Person.new("Mike", 39)
p person.update.pretty_print
person.special_character = "^"
p person.update.pretty_print