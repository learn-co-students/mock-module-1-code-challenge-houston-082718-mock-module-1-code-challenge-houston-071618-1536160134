require 'pry'
require_relative './book'
require_relative './author'


herman_melville = Author.new("Herman Melville")
harper_lee = Author.new("Harper_lee")
richard_ojo = Author.new("Richard Ojo")
bami_dele = Author.new("Bamidele olaitan")

moby_dick = Book.new("moby dick", 585, herman_melville)
to_kill_a_mockingbird = Book.new("To kill a Mockingbird", 281, harper_lee)
basketball_and_coding = Book.new("basketballand coding", 500, richard_ojo)
the_laundryman = Book.new("The laundryman", 2000, bami_dele)
binding.pry

true
