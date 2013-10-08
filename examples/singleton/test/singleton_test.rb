require 'test_helper'
require 'product_controller'
require 'product'

describe ProductController do
  it "cannot be accessed more than once" do
    -> { ProductController.new }.must_raise NoMethodError
  end

  it "retrieves a product" do
    PRODUCT = Product.new "Tomato", :fruit
    controller = ProductController.instance
    controller.show
    controller.product.must_equal PRODUCT
  end
end
