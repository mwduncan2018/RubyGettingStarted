#Fix later when inheritance is understood

class Animal
    @count = 0
    def self.increment_count
        @count += 1
    end
    def self.count
        @count
    end
end


class Dog < Animal
    @count
end


class Cat < Animal
    @count
end


Animal.increment_count
Dog.increment_count
Dog.increment_count
Cat.increment_count
Cat.increment_count
Cat.increment_count
puts "Animal Count = " + Animal.count.to_s
puts "Dog Count    = " + Dog.count.to_s
puts "Cat Count    = " + Cat.count.to_s