require_relative('./models/customer.rb')
require_relative('./models/film.rb')
require_relative('./models/ticket.rb')

require('pry-byebug')


customer1 = Customer.new({'name' => 'Danny', 'funds' => 100})
customer1.save

binding.pry
nil
