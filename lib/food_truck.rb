class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def find_item(item)
    @inventory.find do |stock_item|
      stock_item = item
    end
  end

  def check_stock(item)
    if find_item(item).nil?
      0
    else
      find_item(item).values
    end
  end

  
end
