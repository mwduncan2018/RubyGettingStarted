#private new
class XYZ_Factory
    def self.get_instance(x, y, z)
        XYZ.new(x,y,z)
    end
    
    private_class_method :new
end

class XYZ
    def initialize(x, y, z)
        @x = x
        @y = y
        @z = z
    end

    def pretty_print
        puts "x,y,z = " + @x.to_s + "," + @y.to_s + "," + @z.to_s
    end
     
end


begin
    xyz_factory = XYZ_Factory.new
rescue NoMethodError => no_method_error
    p no_method_error
end

foo = XYZ_Factory.get_instance(1,2,3)
bar = XYZ_Factory.get_instance(4,5,6)
bob = XYZ_Factory.get_instance(7,8,9)
foo.pretty_print
bar.pretty_print
bob.pretty_print