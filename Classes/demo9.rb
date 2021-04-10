class Garage
    def initialize(name, length, width)
        @name = name
        @length = length
        @width = width
    end

    private

    def calculate_area()
        @length * @width
    end

    public

    def pretty_print()
        puts "#{@name} - #{calculate_area}"
    end
end


g = Garage.new("Mike's Garage", 30,40)
g.pretty_print
begin
    g.calculate_area
rescue NoMethodError => e
    puts "Method does not exist!"
    p e
else
    puts "Catching any other type of exception!"
    p e
ensure
    puts "Inside ensure"
end