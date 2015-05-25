
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
    total_price
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


class Shopper
	#include Cart
	 attr_accessor :name, :price, :money, :full_name
	def initialize(first_name,last_name, money)

		@first_name=first_name
		@last_name=last_name 
		@money=money 
		@full_name=@first_name+@last_name
		@cart=Cart.new
	end

	def first_name
		@first_name 
	end

	def last_name
		@last_name 
	end

	def money
		@money 
	end

	def full_name
		@full_name 
	end

	def add_to_cart(item)
		@cart.add(item)
	end

	def remove_from_cart(item)
		@cart.remove(item)
	end

	def checkout
		item_money=@cart.total_price
		if @money>item_money 
			remaining_money=@money-item_money 
			puts "$#{remaining_money}0"
		end
		@cart=Cart.new
	end

end



class SuperShopper < Shopper
	def checkout
		item_money=@cart.total_price*0.9
		if @money>item_money 
			remaining_money=@money-item_money 
			puts "$#{remaining_money}0"
		end
		@cart=Cart.new
	end
	def get_money(integer)
		new_money=0
		if integer==nil
			new_money=@money+100 
		else
			new_money=@money+integer
		end
		puts "$#{new_money}0"
		new_money 
	end


end

#child class: parent's class method overriding is possible? and also parent's instance variable: child class can aceess to right? 

