class Author

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def write_book (title, word_count)
        new_book = Book.new(self, title, word_count)
    end

    def books
        Book.all.select do |book|
            book.author == self
        end 
    end

    def total_words
        total_words = 0
        all_books = self.books
        all_books.each do |book|
            total_words += book.word_count
        end
        total_words
    end

    def self.most_words
        words = self.all.map do |author|
            author.total_words   
        end 

        self.all[words.index(words.max)]
    end
end
