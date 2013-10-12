class HourRange < PlanRange
  INFINITY = 24

  def initialize start, finish = INFINITY
    super start, finish
  end
end
