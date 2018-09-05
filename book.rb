class Book
  @@all = []

  attr_reader :author, :title, :word_count

  def self.all
    @@all
  end

  def initialize(author, title, word_count)
    @author = author
    @title = title
    @word_count = word_count

    self.class.all << self
  end
end
