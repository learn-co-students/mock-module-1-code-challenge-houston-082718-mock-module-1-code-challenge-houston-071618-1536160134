require 'pry'
require_relative './book'
require_relative './author'

20.times do |i|
    new_author = Author.new
    new_author.write_book("titles are for lamers #{i}", rand(60000))
    new_author.write_book("titles are still for lamers #{i}", rand(60000))
end

Author.all.each do |author|
  puts author.total_words
end

puts Author.most_words.total_words
