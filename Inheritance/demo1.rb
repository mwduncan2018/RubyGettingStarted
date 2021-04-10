#Using super
class Foo
    def initialize(name)
        @name = name
    end

    def display(x)
        puts "[Foo Class]"
        puts "==#{@name}=="
        puts x
        puts ""
    end

    def process()
        puts "[Foo Class]"
        puts "Calling process"
        puts ""
    end

end

class Bar < Foo
    def display(x)
        puts "[Bar Class]"
        super #calls the method of the super class and passes the same arguments
    end

    def process(y)
        puts "[Bar Class] *" + y.to_s
        super() #calls the method of the super class and passes no arguments
    end
end

f = Foo.new("foo")
b = Bar.new("bar")
f.display("MacBook Air")
b.display("Alienware Laptop")
f.process()
b.process("xyz")