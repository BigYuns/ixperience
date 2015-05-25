puts "Welcome to Yunny's mini quiz"
puts "What's my last name?"
name=gets.chomp
points=0
if name=="Chung"
	puts "Right! you have 1 point"
	points=points+1
else
	puts "Wrong. Try it again"
end

puts "How many sibilings to I have?"
sib=gets.chomp.to_i
if sib==0
	points=points+1
	if points>1
		puts "Right! You have #{points} points"
		
	else
		puts "Right! you have 1 point"
	end
	
else 
	puts "Wrong. Try it again"
end

puts "What country was I born in?"
country=gets.chomp

if country=="South Korea"
	points=points+1
	if points>1
		puts "Nice! You have #{points} points"
	else
		put "Nice! You have 1 point"
	end
	
else
	puts "Wrong. Try it again"
end
puts "your total point is #{points} point(s)"
puts "Thank you for playing"
