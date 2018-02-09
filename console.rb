require_relative('./models/customer.rb')
require_relative('./models/film.rb')
require_relative('./models/ticket.rb')

require('pry-byebug')


customer1 = Customer.new({'name' => 'Danny', 'funds' => 100})
customer1.save

customer2 = Customer.new({'name' => 'Tina', 'funds' => 100})
customer2.save



film1 = Film.new({'title' => 'Den of Thieves', 'price' => 10})
film1.save

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket1.save

ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id})
ticket2.save

binding.pry
nil
