require_relative "../modules/connection.module.rb"
require_relative "./minus.class.rb"

class InsertMinus < Minus
  extend Connection

  def initialize(username, value)
    @@conn = self.class.use_connection
    @username = username
    @value = value
    @id = self.class.get_the_id(@username)
    self.class.insert(@id, @value)
  end

  def self.insert(id, value)
    @@conn.exec_params("INSERT INTO minus (expense_value, user_id) VALUES ($1, $2)", [value, id])
  end
end