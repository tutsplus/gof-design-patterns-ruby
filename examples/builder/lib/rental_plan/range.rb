class PlanRange
  INFINITY = 9999

  attr_reader :start, :finish, :hour_ranges

  def self.build
    start = 1
    finish = INFINITY
    hour_ranges = [ HourRange.new(1) ]

    new start, finish, hour_ranges
  end

  def initialize start, finish, hour_ranges = nil
    @start = start
    @finish = finish
    @hour_ranges = hour_ranges
  end
end
