#Refinements
module RefineString
    refine String do
        def my_custom_string_method
            "Hello World!"
        end
    end
end

using RefineString
x = "x"
puts x.my_custom_string_method