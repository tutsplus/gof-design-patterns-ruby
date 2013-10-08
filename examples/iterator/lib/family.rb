require "family/parent"
require "family/child"

class Family
  def initialize last_name
    @last_name = last_name
    @children = []
  end

  def add_father name
    @father ||= Parent.new name, "M"
  end

  def add_mother name
    @mother ||= Parent.new name, "F"
  end

  def add_child name, gender
    @children << Child.new(name, gender)
  end

  def each_member
    [ @father, @mother, @children ].flatten.each { |member| yield member }
  end
end
