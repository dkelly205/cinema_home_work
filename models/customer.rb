require_relative("../db/sql_runner.rb")

class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'] if options['id']
    @name = options['name']
    @funds = options['funds'].to_i
  end

  def save()
    sql = "INSERT INTO customers(name, funds) VALUES ($1, $2) RETURNING id"
    values = [@name, @funds]
    customer = SqlRunner.run(sql, values).first
    @id = customer['id'].to_i
  end

  def self.all
    sql = "SELECT * FROM customers"
    values = []
    customers = SqlRunner.run(sql, values)
    result = customers.map { |customer| Customer.new(customer)}
    return result
  end

  def self.delete_all
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def delete
    sql = "DELETE FROM customers WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def update
    sql = "UPDATE customers SET (name, funds) = ($1, $2) WHERE id = $3"
    values = [@name, @funds, @id]
    SqlRunner.run(sql, values)
  end

  def self.find(id)
    sql = "SELECT * FROM customers WHERE id = $1"
    values = [id]
    customer = SqlRunner.run(sql,values)
    return Customer.new(customer[0])
  end

  def films()
    sql = "SELECT films.* FROM films INNER JOIN tickets ON films.id = tickets.film_id WHERE customer_id = $1"
    values = [@id]
    films = SqlRunner.run(sql, values)
    return films.map{|film| Film.new(film)}
  end

  # def buy_ticket()
  #   sum = 0
  #   for film in films
  #     sum += film.price.to_i
  #   end
  #   @funds -= sum
  # end

#   Buying tickets should decrease the funds of the customer by the price
# Check how many tickets were bought by a customer
# Check how many customers are going to watch a certain film

  # def number_of_tickets
  #     if buy_ticket
  #       return films.length
  #     else
  #       return 0
  #     end
  # end

  def buy_ticket(film)
    @funds -= film.price.to_i
  end

  def number_of_tickets
    tickets = []
    # if buy_ticket(film)
    #   tickets << film
    # end
    return tickets.count

  end



end
