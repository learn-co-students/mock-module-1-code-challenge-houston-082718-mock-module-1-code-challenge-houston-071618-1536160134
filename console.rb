require 'pry'
require_relative './book'
require_relative './author'

moby_dick = Book.new("Moby Dick", "Herman Melville", 150000)
other_book = Book.new("Other Book", "Herman Melville", 70000)
pride = Book.new("Pride and Prejudice", "Jane Austen", 120000)
melville = Author.new("Herman Melville")
austen = Author.new("Jane Austen")

binding.pry


