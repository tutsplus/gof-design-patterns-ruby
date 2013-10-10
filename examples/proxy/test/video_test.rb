require 'test_helper'
require 'video'

describe Video do
  let(:name) { "Welcome to Tuts+" }
  let(:description) { "In this lesson you'll learn about the proxy pattern." }
  let(:video) { Video.new name, description }

  it "shows the name" do
    capture { video.play }.string.must_include name
  end

  it "shows the description" do
    capture { video.play }.string.must_include description
  end
end
