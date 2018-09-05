# Author.all should return all of the authors
# Author#books should return all of the books an author has written
# Author#write_book should take arguments of a title and word count and make a new Book instance associated with this author
# Author#total_words should return the total number of words that author has written across all of their authored books.
# Author.most_words should return the author instance who has written the most words

class Author
  attr_accessor :name
  @@authors = []
  def initialize(name)
    @name = name
    @@authors << self
  end

  def books
    Book.all.select {|book| book.author == self.name}
  end

  def write_book(title,word_count)
    new_book = Book.new(title,self.name,word_count)
  end

  def total_words
    total = 0
    self.books.each do |books|
      total +=books.word_count
    end
    total
  end

  def self.most_words
    most_words = 0
    author_most_words = nil
    @@authors.each do |author|
      if author.total_words > most_words
        most_words = author.total_words
        author_most_words = author
      end
    end
    author_most_words
  end

end
