class Book
@@all = []

  attr_reader :author
  attr_accessor :title, :word_count

def initialize(title, word_count, author)
 @title = title
 @word_count = word_count
 @author = author
 @@all << self
end

def self.all
  @@all
end
 #
 # def author
 #   Author.all.find{|author|
 #   author.book == self }
 # end

 # def title
 #
 # end
 #
 # def word_count
 #
 # end

# moby_dick = Book.new("moby dick" 585, "Herman melville")
# to_kill_a_mockingbird = Book.new("To kill a Mockingbird", 281, "Harper lee")

end


# - `Book.all`
# should return all of the books
# - `Book#author`
# should return the author instance who wrote this book
# - `Book#title`
# should return the title of the book
# - `Book#word_count`
# should return the number of words in the book
