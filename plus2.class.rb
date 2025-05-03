require_relative "../modules/connection.module.rb"
require_relative "./plus.class.rb"

class InsertPlus < Plus
  extend Connection

  def initialize(username, value)
    @@conn = PG.connect(dbname: 'expense_tracker', user: 'postgres', password: '30ianpdi', host: 'localhost')
    @username = username
    @value = value
    @id = self.class.get_the_id(@username)
    self.class.insert(@id, @value)
  end

  def self.insert(id, value)
    @@conn.exec_params("INSERT INTO plus (expense_value, user_id) VALUES ($1, $2)", [value, id])
  end
end