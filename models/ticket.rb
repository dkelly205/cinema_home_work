class Ticket

  attr_reader :id
  attr_accessor :customer_id, :film_id

  def initialize(options)
    @id = options['id']
    @customer_id = options['customer_id']
    @film_id = options['film_id']
  end



end
