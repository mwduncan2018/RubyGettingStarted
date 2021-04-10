#__send__
class DemoUser
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end

    def is_authorized_for?(x)
        return true if @last_name.start_with?(x.to_s)
    end

    def pretty_print
        z = ""
        if is_authorized_for?("Dunc")
            z = "(Authorized)"
        end
        puts "DemoUser = " + @first_name + " " + @last_name + z
    end

    private :is_authorized_for?
end


u = DemoUser.new("Mike","Duncan")
u.pretty_print
w = DemoUser.new("Erik","Angone")
w.pretty_print

puts "Without using __send__, an exception occurs"
begin
    u.is_authorized_for?
rescue NoMethodError => no_method_error
    p no_method_error
end

puts "When using __send__, we can access private methods"
puts u.__send__(:is_authorized_for?, "Dunc")
