
class Author

    @@all = []

    attr_reader :name
    def initialize(name)

        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def books
        self.all.select do |books|
            books.name
        end
    end



end