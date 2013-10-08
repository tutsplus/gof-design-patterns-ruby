class ProductController
  attr_reader :product

  def show id
    ProductFinder.find id
  end
end
