class Video
  def initialize title, description
    @title = title
    @description = description
  end

  def play
    puts @title
    puts @description
  end
end
