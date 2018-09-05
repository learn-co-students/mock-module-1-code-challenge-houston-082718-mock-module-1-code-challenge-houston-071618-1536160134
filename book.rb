class Book
    
    # Book#author should return the author instance who wrote this book
    # Book#title should return the title of the book
    # Book#word_count should return the number of words in the book
    attr_accessor :author, :title, :word_count 

    @@all = [] 

    def self.all # Book.all should return all of the books
        @@all
    end

    def initialize(title, word_count)
        @title = title 
        @word_count = word_count

        @@all << self
    end

end
