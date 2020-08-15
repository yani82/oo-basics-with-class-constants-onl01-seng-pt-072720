class Shoe
  attr_accessor :color, :material, :condition
  attr_reader :brand, :size
  
  brands = []

  def initialize(brand)
    @brand = brand
    brands << brand unless BRANDS.any? { |b| b == brand }
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end

