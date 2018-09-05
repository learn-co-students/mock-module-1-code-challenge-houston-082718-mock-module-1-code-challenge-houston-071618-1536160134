require 'pry'
require_relative './book.rb'
require_relative './author.rb'

book_1 = Book.new("Book title A1", "AuthorA", 1000)
book_2 = Book.new("Book title A2", "AuthorA", 2000)
book_3 = Book.new("Book title B1","AuthorB", 1500)
book_4 = Book.new("Book title B2","AuthorB", 2500)
author_1 = Author.new("AuthorA")
author_2 = Author.new("AuthorB")

#binding.pry


