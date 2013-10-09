require 'test_helper'
require 'rental_plan'

describe RentalPlan do
  before do
    @plan = RentalPlan::Base.create("My First Plan")
  end

  it "has a plan description of things" do
    @plan.details.name.must_equal "My First Plan"
  end
end
