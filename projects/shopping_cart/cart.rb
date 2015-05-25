class Cart

	def initialize
		@items = []
	end


	def items
		puts @items
	end


	def total_price
		sum=0.0
		@items.each do |element|
			sum=sum+element.price
		end
		sum 
	end


	def add(item)
		@item.push(item)

	end


	def remove(item_name)
		@items.delete(item_name)
	end


end