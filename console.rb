require 'pry'
require_relative './book'
require_relative './author'

jkrowling = Author.new("J.K. Rowling")
grrmartin = Author.new("George R.R. Martin")

hpss = jkrowling.write_book("Harry Potter and the Sorcerer's Stone", 309)
jkrowling.write_book("Harry Potter and the Chamber of Secrets", 341)
jkrowling.write_book("Harry Potter and the Prisoner of Azkaban", 435)
jkrowling.write_book("Harry Potter and the Goblet of Fire", 734)
jkrowling.write_book("Harry Potter and the Order of the Phoenix", 870)
jkrowling.write_book("Harry Potter and the Half-Blood Prince", 652)
jkrowling.write_book("Harry Potter and the Deathly Hallows", 759)



grrmartin.write_book("A Game of Thrones", 694)
grrmartin.write_book("A Clash of Kings", 768)
grrmartin.write_book("A Storm of Swords", 973)
# grrmartin.write_book("A Dance with Dragons", 1040)

#jrrtolkien = Author.new("John Ronald Reuel Tolkien")

#jrrtolkien.write_book("The Fellowship of the Ring", 423)






binding.pry


