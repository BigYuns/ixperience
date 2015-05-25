class Item
  attr_accessor :name, :price
  def initialize(name,price)
    @name = name
    @price = price
  end

  def name
    @name
  end

  def price
    @price 
  end


end

class Cart
  def initialize
    @items = []
  end

  # @return{Array<Item>}
  #   The items and their quantities in the cart, keyed by item name.
  def items
    @items.each do |item|
      puts "Name: #{item.name} Price: #{item.price}"
    end
  end

  # @return{float} The total price of all the goods in the cart.
  def total_price
    total_price = 0.0
    @items.each do |item|
      total_price += item.price
    end
    puts "$#{total_price}0"
  end

  # @param{Item} item The item to add.
  def add(item)
    @items << item
  end

  # @param{Item} item The item to remove.
  def remove(item_name)
    i = 0
    while i < @items.length
      if @items[i].name == item_name
        puts @items[i].name
        @items.delete(@items[i])
      end
      i+=1
    end
  end
end