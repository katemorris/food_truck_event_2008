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

  def item_list
    list = []
    @food_trucks.each do |truck|
      truck.inventory.each do |item, amount|
        list << item
      end
    end
    list
  end

  def sorted_item_list
    name_list = item_list.map do |item|
      item.name
    end
    name_list.uniq.sort_by { |name| name }
  end

  def total_quanitity_item_truck(item)
    food_trucks_that_sell(item).sum do |truck|
      truck.inventory.sum do |truck_item, amount|
        if truck_item == item
          amount
        else
          0
        end
      end
    end
  end

  def data_about_item(item)
    data = {}
    data[:quantity] = total_quanitity_item_truck(item)
    data[:food_trucks] = food_trucks_that_sell(item)
    data
  end

  def total_inventory
    starting = {}
    item_list.each do |item|
      starting[item] ||= {}
      starting[item] = data_about_item(item)
    end
    starting
  end

  def overstocked_items
    item_list.
  end
end
