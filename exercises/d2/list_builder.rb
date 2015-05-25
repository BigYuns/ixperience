puts "Welcome to list builder!"
list=[]
while true
	puts "What can I do for you?"
	item=gets.strip 

	if item.include?("add")
		#puts "What can I add?"
		item_array=item.split

		list.push(item_array[1])
		puts "Added! Your list is: #{list} "


	elsif item.include?("remove")
	 	 
		if list.include?(item.split[1])
			list.delete(item.split[1])
			puts "Removed! Your list is: #{list}"
		elsif item.include?("quit")
			return puts "Bye!"

		else
			want_to_delete=item.split[1]
			puts "Sorry, there is no #{want_to_delete} in the cart"
		end
	else
	
	end



end