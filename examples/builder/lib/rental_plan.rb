require 'rental_plan/meta'
require 'rental_plan/range'
require 'rental_plan/hour_range'

class RentalPlan
  attr_reader :ranges

  def self.build name
    build_meta name
    build_ranges
    new @meta, @ranges
  end

  def self.build_meta name
    @meta = Meta.new name
  end

  def self.build_ranges
    @ranges = [ PlanRange.build ]
  end

  def initialize meta, ranges
    @meta = meta
    @ranges = ranges
  end

  def name
    @meta.name
  end

end
