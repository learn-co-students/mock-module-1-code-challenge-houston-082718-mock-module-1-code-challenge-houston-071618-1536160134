require 'pry'
require_relative './book'
require_relative './author'

radical_acceptance = Book.new('Radical Acceptance', 'Tara Brach', 395)
cool_book = Book.new('Cool Book', 'Tara Brach', 875)
coding_basics = Book.new('Coding Basics', 'Violet Moon', 15)
why_code = Book.new('Why Code', 'Violet Moon', 3)
violet_moon = Author.new('Violet Moon')
tara_brach = Author.new('Tara Brach')

binding.pry
