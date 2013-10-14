require 'test_helper'
require 'employee'
require 'chief'
require 'department'

describe Employee do
  it "knows his name" do
    Employee.new.must_respond_to :name
  end

  it "needs to go to the chief and ask for the department name" do
    department = Department.new "Software Development"
    chief = Chief.new department: department
    Employee.new(chief: chief).department_name.must_equal "Software Development"
  end
end
