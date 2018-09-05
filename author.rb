class Author
    attr_reader :name, :books

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all 
        @@all
    end

    def books
       books = Book.all.select do |book|
        book.author == self.name  
        books
       end
    end 

    def write_book(title, word_count)
       book = Book.new(self, title, word_count)
    end

    def total_words
    #     author = Book.all.map do |author|
    #         if book.author == self.name
    #     author.select do |word|     
    #     end
    # end
    end

    # def self.most_words

    # end
end
