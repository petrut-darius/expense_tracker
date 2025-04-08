require_relative "../modules/connection.module.rb"

class Plus
  extend Connection

  def initialize(username)
    @@conn = self.class.use_connection
    @username = username
    @id = self.class.get_the_id(@username)
    @values = self.class.get_the_values(@id)
  end

  def self.get_the_id(username)
    result_from_db = @@conn.exec("SELECT * FROM user_info WHERE user_name = $1", [username])
    result_from_db[0]["user_id"]
  end

  def self.get_the_values(id)
    result_from_db = @@conn.exec("SELECT * FROM plus WHERE user_id = $1", [id])
    return result_from_db
  end

end