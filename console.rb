require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("author1")
author1.write_book("childrens book", 10)

author1.total_words #should be 10

author1.write_book("childrens book 2", 10)

author1.total_words #should be 20 


author2 = Author.new("author2")
author2.write_book("history book", 1005)


author3 = Author.new("author3")
author3.write_book("ruby book", 400)

Author.most_words #should return author2

binding.pry
