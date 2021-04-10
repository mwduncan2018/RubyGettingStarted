class Book
    #Class variables with @@ are the same reference for all classes in the hierarchy
    @@variable_for_hierarchy

    #Class variables with @ are a different reference for each class in the hiearchy
    @random_book_count = 0

    #Class variables require a getter to be accessed outside the class
    def self.random_book_count()
        @random_book_count
    end

    #Adds getter and setter methods for each
    attr_accessor :title, :author, :pub_year

    #Adds getter method
    attr_reader :pretty_print

    #Adds setter method
    attr_writer :rating

    def initialize(title:, author:, pub_year:)
        #self uses the getters and setters
        self.title = title
        self.author = author
        self.pub_year = pub_year
        self.update_pretty_print
    end

    def self.random_book()
        @random_book_count += 1
        authors_first = ["Jesse", "Saul", "Walter"]
        authors_last = ["Pinkman", "Goodman", "White"]
        titles_1 = ["Natural", "Guardian", "Bears"]
        titles_2 = ["Angels", "and Oranges", "Inc."]
        author = authors_first[rand(3)] + " " + authors_last[rand(3)]
        title = titles_1[rand(3)] + " " + titles_2[rand(3)]
        year = rand(1960..2022)
        Book.new(title: title, author: author, pub_year: year)
    end

    def rate_book(rate:)
        self.rating = rate
        self.update_pretty_print
    end

    def update_pretty_print()
        #Use @ to directly access the instance data
        @pretty_print = self.title + " (" + self.author + ", " + self.pub_year.to_s + ")"
        @pretty_print = self.pretty_print + " " + @rating.to_s + " STARS" if @rating
    end    

    def <=>(other)
        self.title <=> other.title
    end

    def ==(other)
        self.title == other.title
    end

    def eql?(other)
        self == other
    end

end

class EBook < Book
    attr_accessor :website
end

def test_create_random_book
    puts "===test_create_random_book==="
    book_list = []
    for i in 0...2 do
        book = Book.random_book()
        book.rate_book(rate: rand(6))
        book_list.push(book)
    end
    
    book_list.each {|book| puts book.pretty_print }
    
    puts "Random Books = " + Book.random_book_count.to_s
    puts ""
end

def test_object_type
    puts "===test_object_type==="
    e_book_1 = EBook.new(pub_year: 2021, title: "Into The Storm", author: "X")
    book_2 = Book.new(pub_year: 2020, title: "Into The Storm", author: "Q")
    puts "book_2 is a Book" if book_2.is_a?(Book)
    puts "e_book_1 is a Book" if e_book_1.is_a?(Book)
    puts "e_book_1 is a kind of Book" if e_book_1.kind_of?(Book)
    puts "e_book_1 is not an instance of Book" if !e_book_1.instance_of?(Book)
    puts "e_book_1 is an instance of EBook" if e_book_1.instance_of?(EBook)
end

def test_equal_override
    puts "===test_equal_override==="
    a = Book.new(pub_year: 2021, title: "Into The Storm", author: "X")
    a.rate_book(rate: 5)
    puts a.pretty_print
    
    b = Book.new(pub_year: 2020, title: "Into The Storm", author: "Q")
    b.rate_book(rate: 5)
    puts b.pretty_print

    puts "a == b" if a == b
    puts "a != b" if !(a == b)
    puts "a.eql?(b)" if a.eql?(b)
    puts "!a.eql?(b)" if !(a.eql?(b))
    puts "a.equal?(b)" if a.equal?(b)
    puts "!a.equal?(b)" if !a.equal?(b)
    puts ""
end

def main
    test_equal_override
    test_create_random_book
    test_object_type

end

main()