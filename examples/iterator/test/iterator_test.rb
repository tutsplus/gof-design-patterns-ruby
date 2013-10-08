# mention Enumerable

require "test_helper"
require "family"

describe Family do
  it "prints every member of the family" do
    family = Family.new "Jackson"
    family.add_father "Anthony"
    family.add_mother "Jane"
    3.times { |i| family.add_child "Child #{i.to_s}", "F" }

    string = capture { family.each_member { |member| puts member.name } }.string

    string.must_equal <<EOF
Anthony
Jane
Child 0
Child 1
Child 2
EOF
  end
end
