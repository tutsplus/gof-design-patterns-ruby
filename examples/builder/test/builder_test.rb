require 'test_helper'
require 'rental_plan'

describe RentalPlan do
  before { @plan = RentalPlan.build("My First Plan") }

  it "has metadata" do
    @plan.name.must_equal "My First Plan"
  end

  it "has a list of day range items" do
    @plan.ranges.first.start.must_equal 1
  end

  describe "each range item" do
    it "has its own list of hour range items" do
      @plan.ranges.first.hour_ranges.first.finish.must_equal 24
    end
  end
end
