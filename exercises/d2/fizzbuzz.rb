integer=1
while integer<=100
	if integer%15==0
		puts "fizzbuzz"
	elsif integer%3==0
		puts "fizz"
	elsif integer%5==0
		puts "buzz"
	else 
	puts integer 
	end 
	integer=integer+1
end

