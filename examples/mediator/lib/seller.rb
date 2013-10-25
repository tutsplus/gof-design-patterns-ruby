class Seller
  attr_accessor :balance

  def initialize balance: 0
    @balance = balance
  end

  def publish agency, house
    agency.register house
  end

end
