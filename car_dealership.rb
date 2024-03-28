class CarDealership
  def self.create(options)
    connection = connect_to_database
  end

  def new_auto_db(x,y,z)
    sql= <<-TXT
      INSERT INTO accounts (user_id, username, password, email, created_at, last_login)
      values ('#{x}', 'xuy', 'jopa', '3vinogradof@gmail.com', null, null);
    TXT

    connect_to_database.exec(sql)
  end

  private

  def connect_to_database
     PG.connect(dbname: 'car_dealership',user: 'postgres', password: '6eat9070')
  end
end


# CarDealership.create(model: 'Audi A5', year: 2018, color: 'red')
# => ID (5)

# CarDealership.fetch(5)
# => { id: 5, model: 'Audi A5', year: 2018, color: 'red' }

# CarDealership.destroy(5)
# => ID (5)

# CarDealership.index
# => [ { id: 5, model: 'Audi A5', year: 2018, color: 'red' }, { ... }, { ... } ]
# connection = PG.connect(dbname: 'car_dealership',user: 'postgres', password: '6eat9070')
