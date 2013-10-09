module RentalPlan
  class Base
    attr_reader :details, :ranges
    def initialize details, ranges
      @details = details
      @day_ranges = ranges
    end

    def self.create name
      description = RentalPlan::Description.new name
      day_ranges = [ RentalPlan::Range.new ]

      new description, day_ranges
    end
  end
end
