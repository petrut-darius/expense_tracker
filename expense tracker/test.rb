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
