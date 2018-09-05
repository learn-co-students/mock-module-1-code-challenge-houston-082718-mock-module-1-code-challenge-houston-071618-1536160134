require 'pry'
require_relative './book'
require_relative './author'

book = Book.new('JK Rowling', 'Half-Blood Prince', 100000)
book_two = Book.new('Plato', 'Republic', 50000)

author = Author.new('JK Rowling')
author_two = Author.new('Plato')

binding.pry


