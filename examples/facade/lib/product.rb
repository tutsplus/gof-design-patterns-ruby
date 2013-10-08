class Product
  attr_reader :name, :category, :tags
  def initialize name, category, tags = []
    @name = name
    @category = category
    @tags = tags
  end

  def self.find id
    PRODUCT
  end
end
