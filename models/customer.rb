class Customer

  attr_reader :id
  attr_accessor :name, :funds
  
  def initialize(options)
    @id = options['id'] if options['id']
    @name = options['name']
    @funds = options['funds'].to_i
  end




end
