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

    def books
        Book.all.select do |book|
            book.author == self.name
        end
    end

    def write_book(title, word_count)
        Book.new(title, self.name, word_count)
    end

    def total_words
        total_word_count = 0

        self.books.each do |book|
            total_word_count += book.word_count
        end
        total_word_count
    end

    def self.most_words
        word_count = 0
        most = nil

        self.all.each do |author|
            if author.total_words > word_count
                word_count = author.total_words
                most = author
            end
        end
        most
    end

end