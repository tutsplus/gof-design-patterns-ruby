class Employee
  attr_reader :chief

  def initialize args = {}
    @chief = args[:chief]
  end

  def name
    "Anonymous"
  end

  def method_missing *args, &block
    if args[0].to_s.include? "department"
      chief.send args.delete_at(0), *args, &block
    else
      super *args, &block
    end
  end

end
