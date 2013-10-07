require "test_helper"
require "button"
require "show_message"

describe Button do
  it "triggers something" do
    button = Button.new(
      label: "Click me!",
      action: ShowMessage
    )

    capture { button.click }.string.must_include "Button was clicked!"

  end
end
