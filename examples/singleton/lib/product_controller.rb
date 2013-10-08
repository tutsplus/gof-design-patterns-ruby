class ProductController
  include Singleton

  attr_reader :product
  def show
    @product = PRODUCT
  end
end
