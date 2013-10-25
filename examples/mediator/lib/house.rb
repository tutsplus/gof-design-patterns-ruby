class House
  attr_accessor :owner
  attr_reader :price

  def initialize rooms: 0, price: 0, owner: nil
    @rooms = rooms
    @price = price
    @owner = owner
  end
end
