require 'pry'
require_relative './book'
require_relative './author'


joe = Author.new('Joe')
john = Author.new('john')
stuff = Book.new("stuff", joe)

binding.pry


