module Tagging
    def tag(tag)
        @tags ||= [] #initialize a new array if @tags is nil
        @tags << tag
    end

    def untag(tag)
        @tags.delete(tag) unless @tags.nil
    end

    attr_reader :tags
end

class Animal
    include Tagging
    include Enumerable

    def initialize(species)
        @species = species.to_s
    end
    
    def pretty_print
        puts @species
    end

    #Implemented for Enumerable
    def each(&block)
        @tags.each {|tag| block.call(tag) }
    end

    #Implemented for Sorting
    def <=>(other)
        @species <=> other.species
    end

    attr_reader :species
end

lion = Animal.new("Lion")
lion.tag("King of the Jungle")
lion.tag("Top of the Food Chain")
bear = Animal.new("Bear")
bear.tag("Always Put Out Forest Fires")
bear.tag("Yogi")

animal_list = [lion, bear]
puts "How many animals?........................... " + animal_list.count.to_s
puts "How many animals start with the letter B?... " + animal_list.count {|x| x.species.start_with?("B") }.to_s
puts "How many animals start with the letter L?... " + animal_list.count {|x| x.species.start_with?("L") }.to_s
puts "How many animals start with the letter A?... " + animal_list.count {|x| x.species.start_with?("A") }.to_s

animal_list.each do |x|
    x.pretty_print
    x.each {|tag| puts "  " + tag }
end