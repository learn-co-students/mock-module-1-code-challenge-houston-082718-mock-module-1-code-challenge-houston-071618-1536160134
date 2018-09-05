require 'pry'
require_relative './book'
require_relative './author'

#=====================================================================================

# Build the following methods on the Book class

book1 = Book.new("Book Title", 100)
puts book1
puts book1.title # Book#title should return the title of the book
puts book1.word_count # Book#word_count should return the number of words in the book
puts Book.all # Book.all should return all of the books

# Book#author should return the author instance who wrote this book

puts "\n"
puts "=" * 100
puts "\n"
#=====================================================================================

# Build the following methods on the Author class

author1 = Author.new("Name1")
puts author1.name
puts Author.all # Author.all should return all of the authors
author1.write_book("Title1.1", 200) # Author#write_book should take arguments of a title and word count and make a new Book instance associated with this author
puts author1.books # Author#books should return all of the books an author has written
puts author1.books.first.title
puts author1.books.first.word_count
puts "-" * 50

author1.write_book("Title1.2", 150)
puts author1.books # Author#books should return all of the books an author has written
puts author1.books[1].title
puts author1.books[1].word_count
puts "-" * 50

puts author1.total_words # Author#total_words should return the total number of words that author has written across all of their authored books.
puts "=" * 50

author2 = Author.new("Name2")
puts author2.name
puts Author.all
author2.write_book("Title2.1", 500)
puts author2.books
puts author2.books.first.title
puts author2.books.first.word_count
puts author2.total_words

puts Author.most_words # Author.most_words should return the author instance who has written the most words

#=====================================================================================

# binding.pry







