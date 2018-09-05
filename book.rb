class Book
    attr_reader :author, :title, :words

    @@all = []
    def initialize(author, title, words)
        @author = author
        @title = title
        @words = words
        @@all << self
    end

    def self.all
        @@all
    end
end
