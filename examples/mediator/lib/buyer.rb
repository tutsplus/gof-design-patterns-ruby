class Buyer
  attr_accessor :budget

  def initialize budget: 0
    @budget = budget
  end

  def follow_agency agency
    @agency = agency
  end

  def buy house
    @agency.mediate_purchase house, self
  end end
