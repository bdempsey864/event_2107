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
    @food_trucks.flat_map do |food_truck|
      food_truck.name
    end
  end

  # def food_trucks_that_sell(item)
  #   trucks_with_items = @food_trucks.flat_map do |truck|
  #     truck.inventory.flat_map do |inventory|
  #       inventory.find_all do |items|
  #         items == item
  #     # require "pry"; binding.pry
  #       end
  #     end
  #   end
  # end

  # def potential_revenue
  #   price = @food_trucks.inventory.map do |truck|
  #     truck.keys.flat_map do |key|
  #       key.price * @food_trucks.inventory.values
  #     end
  #   end
  # end
end