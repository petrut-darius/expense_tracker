class InsertMinus < Minus
  def initialize(username, value)
    @username = username
    @value = value
    @id = self.class.get_the_id(@username)
    self.class.insert(@id, @value)
  end

  def self.insert(id, value)
    conn = PG.connect(dbname: 'expense_tracker', user: 'postgres', password: '30ianpdi', host: 'localhost')
    conn.exec_params("INSERT INTO minus (expense_value, user_id) VALUES ($1, $2)", [value, id])
  end
end