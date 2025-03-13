require "pg"
require_relative "./classes/create_user.class.rb"

puts "Create your user"
puts "Enter a name"
username = gets.chomp.to_s
puts "Enter a password"
password = gets.chomp.to_s
user = CreateUser.new(username, password)



