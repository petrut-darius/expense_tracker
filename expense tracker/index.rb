require "pg"
require_relative "./classes/create_user.class.rb"

puts "Create your user"
puts "Enter a name"
username = gets.chomp.to_s
puts "Enter a password"
password = gets.chomp.to_s
user = CreateUser.new(username, password)

#InsertMinus
require_relative "./classes/minus2.class.rb"

puts "Enter a name"
username = gets.chomp.to_s
puts "Enter a value"
value = gets.chomp.to_s
x = InsertMinus.new(username, value)

#InsertPlus
require "pg"
require_relative "./classes/plus2.class.rb"

puts "Enter a name"
username = gets.chomp.to_s
puts "Enter a value"
value = gets.chomp.to_s


x = InsertPlus.new(username, value)
