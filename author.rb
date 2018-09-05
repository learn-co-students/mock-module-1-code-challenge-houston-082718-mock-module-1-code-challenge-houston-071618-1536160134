class Author
@@all  = []

  attr_reader :name

def initialize(name)
  @name = name
  @@all << self
end

  def books
    Book.all.select{|book|
    book.author == self }
  end

  def write_book(title, word_count)
    book = Book.new(title, word_count, self)
  end

  def total_words
    num_of_words = 0
    books.map{|book|
      if num_of_words == 0
      num_of_words += book.word_count
    end }
      num_of_words
  end
  # not fully working would like to spend more time
  # def self.most_words
  #   author_most_words = 0
  #   author = nil
  #   Author.all.find{|author|
  #     if author_most_words = 0
  #       author_most_words += author.book.word_count
  #       author = author.name
  #     end
  #   }
  # end

end

# herman_melville = Author.new("Herman Melville")
# harper_lee = Author.new("Harper_lee")
#
#
#
# `Author.all`
# should return all of the authors
# - `Author#books`
# should return all of the books an author has written
# - `Author#write_book`
# should take arguments of a title and word count and make a new Book instance associated with this author
# - `Author#total_words`
# should return the total number of words that author has written across all of their authored books.
# - `Author.most_words`
# should return the author instance who has written the most words
