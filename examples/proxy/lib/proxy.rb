class VideoAuthProxy
  def initialize video, user = nil
    @video = video
    @user = user
  end

  def play
    raise StandardError, "Unauthorized" unless @user == "Authenticated user"
    @video.play
  end
end
