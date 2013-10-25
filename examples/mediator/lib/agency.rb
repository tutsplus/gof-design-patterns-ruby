class Agency
  def initialize
    @houses = []
  end

  def register house
    @houses << house
  end

  def mediate_purchase house, buyer
    if conditions_are_met? house, buyer
      handle_money house, buyer
      house.owner = buyer
    end
  end
  
  private

  def conditions_are_met? house, buyer
    @houses.include?(house) && buyer.budget >= house.price
  end

  def pay seller, amount
    seller.balance += amount
  end

  def charge buyer, amount
    buyer.budget -= amount
  end

  def handle_money house, buyer
    pay    house.owner, house.price
    charge buyer,       house.price
  end
end
