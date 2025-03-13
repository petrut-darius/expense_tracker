class Minus
  def initialize(username)
    @username = username
    @id = self.class.get_the_id(@username)
    return self.class.get_the_values(@id)
  end

  def self.get_the_id(username)
    conn = PG.connect(dbname: 'expense_tracker', user: 'postgres', password: '30ianpdi', host: 'localhost')
    result_from_db = conn.exec("SELECT * FROM user_info WHERE user_name = $1", [username])
    result_from_db[0]["user_id"]
  end

  def self.get_the_values(id)
    conn = PG.connect(dbname: 'expense_tracker', user: 'postgres', password: '30ianpdi', host: 'localhost') 
    result_from_db = conn.exec("SELECT * FROM minus WHERE user_id = $1", [id])
    return result_from_db[0]
  end

end