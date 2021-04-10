#In Ruby, classes are open
class GlassPrison
    def process(x)
        x + x
    end
end

glass_prison = GlassPrison.new
puts glass_prison.process(1)

#Monkey Patching: Adding or modifying functionality at runtime
class GlassPrison
    def process(x)
        x + x + x
    end
end

puts glass_prison.process(1)