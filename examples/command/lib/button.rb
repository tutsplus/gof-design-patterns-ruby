class Button
  def initialize args
    @title = args[:title]
    @action = args[:action]
  end

  def click
    @action.new.execute
  end
end

# This class is bad.
class ShowMessageButton

  def initialize args
    @title = args[:title]
  end

  def click
    puts "Button was clicked!"
  end
end
