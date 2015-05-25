puts "Welcome to da hip hoppin club. What's your age?"
age=gets.chomp.to_f
if age<=20
	puts "Too young, fool!"
elsif age >=65
	puts "Go back to the nursing home!"
else
	puts "Aw yeah c'mon in"
end
