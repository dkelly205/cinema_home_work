require_relative('./models/customer.rb')
require_relative('./models/film.rb')
require_relative('./models/ticket.rb')

require('pry-byebug')


customer1 = Customer.new({'name' => 'Danny', 'funds' => 100})
customer1.save

film1 = Film.new({'title' => 'Den of Thieves', 'price' => 10})
film1.save


binding.pry
nil
