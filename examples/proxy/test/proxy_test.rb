require 'test_helper'
require 'video'
require 'proxy'

describe VideoAuthProxy do
  let(:name) { "Welcome to Tuts+" }
  let(:description) { "In this lesson you'll learn about the proxy pattern." }
  let(:video) { Video.new name, description }

  it "prevents an anonymous user to play the video" do
    proxy = VideoAuthProxy.new video
    -> { proxy.play }.must_raise StandardError
  end

  it "allows a subscribed user to play the video" do
    proxy = VideoAuthProxy.new video, "Authenticated user"
    capture { proxy.play }.string.must_include "Welcome to Tuts+"
  end
end
