require "pg"
require_relative "./classes/plus.class.rb"

puts "Enter a name"
username = gets.chomp.to_s


values_plus = Plus.new(username)

puts values_plus.instance_variable_get(:@values).each do |key, value|
    puts "#{key}: #{value}"
end

