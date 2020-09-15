class Item
  attr_reader :name, :price
  def initialize(data)
    @name = data[:name]
    @initial_price = data[:price]
  end

  def price
    @initial_price[1..-1].to_f
  end
end
