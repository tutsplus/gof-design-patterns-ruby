class Chief
  attr_reader :department

  def initialize args = {}
    @department = args[:department]
  end

  def method_missing *args, &block
    if args[0].to_s.include? "department"
      method = args[0].to_s.gsub("department_", "").to_sym
      args.shift
      department.send method, *args, &block
    else
      super *args, &block
    end
  end
end
