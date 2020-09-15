class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |truck|
      truck.inventory.include?(item)
    end
  end

  def sorted_item_list
    food_list = []
    @food_trucks.each do |truck|
      truck.inventory.each do |item, amount|
        food_list << item.name
      end
    end
    food_list.uniq.sort_by { |name| name }
  end

  def overstocked_items

  end
end
