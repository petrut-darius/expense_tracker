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

#Plus
require "pg"
require_relative "./classes/minus2.class.rb"

puts "Enter a name"
username = gets.chomp.to_s


values_plus = Plus.new(username)

x = 0.0
values_plus.instance_variable_get(:@values).each do |row|
    x += row["expense_value"].to_f
end

puts x

#Minus
require "pg"
require_relative "./classes/minus.class.rb"

puts "Enter a name"
username = gets.chomp.to_s


values_minus = Minus.new(username)

x = 0.0
values_minus.instance_variable_get(:@values).each do |row|
    x += row["expense_value"].to_f
end

puts x
