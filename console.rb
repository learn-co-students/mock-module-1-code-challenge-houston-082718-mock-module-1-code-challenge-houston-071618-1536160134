require 'pry'
require_relative './book'
require_relative './author'

lois_lowry = Author.new("Lois Lowry")
the_giver = Book.new("The Giver", lois_lowry, 312000)
margaret_atwood = Author.new("Margaret Atwood")
the_handmaids_tale = Book.new("The Handmaid's Tale", margaret_atwood, 459000)
alias_grace = Book.new("Alias Grace", margaret_atwood, 59483)
maddaddam = Book.new("MaddAddam", margaret_atwood, 98573)

binding.pry


