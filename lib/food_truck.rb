class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory.keys.include?(item)
      @inventory.fetch(item)
    else
      0
    end
  end

  def stock(item, amount)
    @inventory[item] ||= 0
    @inventory[item] += amount
  end
end
