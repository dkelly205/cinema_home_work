require_relative('./models/customer.rb')
require_relative('./models/film.rb')
require_relative('./models/ticket.rb')

require('pry-byebug')


customer1 = Customer.new({'name' => 'Danny', 'funds' => 100})
customer1.save

customer2 = Customer.new({'name' => 'Tina', 'funds' => 100})
customer2.save

customer3 = Customer.new({'name' => 'Darth Vader', 'funds' => 100})
customer3.save

customer4 = Customer.new({'name' => 'Gerard Butler', 'funds' => 100})
customer4.save

customer5 = Customer.new({'name' => 'Chewbacca', 'funds' => 100})
customer5.save

customer6 = Customer.new({'name' => 'Chris Rock', 'funds' => 100})
customer6.save

film1 = Film.new({'title' => 'Den of Thieves', 'price' => 10})
film1.save

film2 = Film.new({'title' => 'Star Wars', 'price' => 10})
film2.save

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket1.save

ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id})
ticket2.save

ticket3 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket3.save

ticket4 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film2.id})
ticket4.save

ticket5 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film2.id})
ticket5.save

ticket6 = Ticket.new({'customer_id' => customer5.id, 'film_id' => film2.id})
ticket6.save

ticket7 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film1.id})
ticket7.save

# customer1.buy_ticket
# customer2.buy_ticket
# customer3.buy_ticket
# customer4.buy_ticket

customer1.buy_ticket(film1)

binding.pry
nil
