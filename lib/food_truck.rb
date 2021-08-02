class FoodTruck
  attr_reader :name, :inventory
  def initialize(name) 
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item].nil?
      0
    else
      @inventory[item]
    end
  end

  def stock(item, number_of_items)
    if @inventory[item].nil?
      @inventory[item] = number_of_items
    else
      @inventory[item] += number_of_items
    end
  end

  def potential_revenue
    price = @inventory.map do |trucks|
      trucks.flat_map do |truck|
        truck.price
      end
    end
    items = @inventory.map do |items|
      items.values
    end
    price * items 
  end
end