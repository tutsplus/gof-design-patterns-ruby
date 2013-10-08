class ProductController
  attr_reader :product

  def show id
    Product.find id
  end
end
