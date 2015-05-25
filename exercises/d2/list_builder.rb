puts "Welcome to list builder!"
list=[]
while true
	puts "What can I add?"
	item=gets.strip 
	list.push(item)
	puts "Added! Your list is: #{list} "

end