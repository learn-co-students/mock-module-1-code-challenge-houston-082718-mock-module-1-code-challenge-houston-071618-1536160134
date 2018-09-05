class Author

    attr_accessor :books, :write_book, :total_words, :name

    @@all = []

    def self.all # Author.all should return all of the authors
        @@all
    end

    def initialize(name)
        @name = name
        @books = [] # Author#books should return all of the books an author has written

        @@all << self
    end

    def write_book(title, word_count) # Author#write_book should take arguments of a title and word count and make a new Book instance associated with this author
        book_instance = Book.new(title, word_count)
        book_instance.title = title
        book_instance.word_count = word_count
        book_instance.author = self
        @books << book_instance
    end

    def total_words # Author#total_words should return the total number of words that author has written across all of their authored books.
        total_word_count = 0

        @books.each do |book_instance|
            total_word_count += book_instance.word_count 
        end

        total_word_count
    end

    def self.most_words # Author.most_words should return the author instance who has written the most words
       most_words = 0
       author_most_words = ""

        self.all.each do |author_instance|
            if author_instance.total_words > most_words
                most_words = author_instance.total_words
                author_most_words = author_instance
            end
       end

       author_most_words
    end
end