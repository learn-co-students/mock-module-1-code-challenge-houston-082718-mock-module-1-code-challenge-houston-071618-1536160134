class Author

attr_reader :name
attr_accessor :books

@@all = []

def initialize(name)
  @name = name
  @books = []
  @@all << self
end

def self.all
  @@all
end

def write_book(title, word_count)
  new_book = Book.new(self, title, word_count)
  self.books << new_book
end

def total_words
  count = 0
  self.books.each do |book|
    count += book.word_count
  end
  count
end

def self.most_words
  most_words_author = nil
  most_words = 0
  @@all.each do |author|
    if(author.total_words > most_words)
      most_words = author.total_words
      most_words_author = author
    end
  end
  most_words_author
end #there's probably an easier array method or something lol

end
