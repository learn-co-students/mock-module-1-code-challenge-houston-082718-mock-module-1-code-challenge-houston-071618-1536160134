require 'pry'
class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select { |book|
        book.author == self.name
    }
  end

  def write_book(title, word_count)
    new_book = Book.new(title, self.name, word_count)
  end

  def total_words
    sum = 0
    books.map { |book|
      sum += book.word_count
    }
    sum
  end

  def self.most_words
    count = Book.all.map { |book|
      book.word_count
    }.sort.reverse[0]

    # Book.all.select { |book|
    #   book.author.word_count == count
    #   return book.author
    # }
  end
end
