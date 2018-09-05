class Author
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def write_book(title, word_count)
        book = Book.new(title, self, word_count)
    end

    def books
        books = Book.all.select do |book|
            book.author == self
        end
        books.map do |book|
            book.title
        end
    end

    def total_words
        books = Book.all.select do |book|
            book.author == self
        end
        words = books.map do |book|
            book.word_count
        end.flatten
        sum = words.reduce :+
    end

    def self.most_words
        words = self.all.map do |author|
            author.total_words
        end
        words.max
    end
end
