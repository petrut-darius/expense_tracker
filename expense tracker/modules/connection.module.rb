module Connection
    def use_connection
        return PG.connect(dbname: 'expense_tracker', user: 'postgres', password: '30ianpdi', host: 'localhost')
    end
end