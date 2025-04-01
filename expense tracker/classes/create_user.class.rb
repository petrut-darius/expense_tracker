require_relative "../modules/connection.module.rb"

class CreateUser
  attr_accessor :username, :password

  extend Connection

  def initialize(username, password)
    @@conn = self.class.use_connection
    @username = username
    @password = password
    self.class.create_user(@username, @password)
  end

  def self.create_user(username, password)
    result = @@conn.exec_params("INSERT INTO user_info (user_name, user_password) VALUES ($1, $2) RETURNING user_id AS returned_id", [username, password])
    puts result[0]["returned_id"]
  end

end
