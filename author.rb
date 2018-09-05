class Author
  @@all =[]

  def initialize
    self.class.all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select {|book| book.author == self}
  end

  def write_book(title, word_count)
    Book.new(self, title, word_count)
  end

  def total_words
    total = 0
    self.books.each do |book|
      total += book.word_count
    end
    total
  end

  def self.most_words
    self.all.sort_by {|author| author.total_words}.last
  end
end
