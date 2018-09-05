
class Book
@@all = []

        attr_accessor :title, :author
    def initialize(title, author)
        @title = title
        @author = author
        @@all << self

    end


    def self.all
    @@all
    end

    def author
        self.select do |book|
            puts book.author
        end
    end
        

end