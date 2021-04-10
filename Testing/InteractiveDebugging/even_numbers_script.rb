#To debug, use -rdebug 
#  ruby -rdebug .\even_numbers_script.rb
#  'n' steps over to the next code line
#  'list 1-6' will print lines of code from the file that are being debugged
#  'cont' will continue execution until the end of the program
#  's' steps into methods
#  'display' will display a value and continue to track that value
#  'disp' will display a value and continue to track that value
#  'undisplay' with the ordinal number will stop tracking that value
#  'break' sets a break point for a line number, file name, or method name
#  'delete' with the ordinal position will remove a break point
#  'quit' will quit debugging

def add_num_to_even_numbers (my_even_numbers, num)
    if num > 0
        my_even_numbers.push num
        puts "Found even number #{num}"
    end
end

my_numbers = [45,67,34,23,34,65,76,22,-22]
my_even_numbers = []
for num in my_numbers
    if !num.to_i.even?
        add_num_to_even_numbers(my_even_numbers, num)
    end
end

puts my_even_numbers