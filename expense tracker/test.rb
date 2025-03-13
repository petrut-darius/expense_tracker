require "pg"
require_relative "./classes/plus.class.rb"
require_relative "./classes/plus2.class.rb"
require_relative "./classes/minus.class.rb"
require_relative "./classes/minus2.class.rb"

puts "Enter a name"
username = gets.chomp.to_s
puts "valoare"
value = gets.chomp.to_s
=begin
values_plus = Plus.new(username)
puts values_plus
=end

insert_minus_values = InsertMinus.new(username, value)

