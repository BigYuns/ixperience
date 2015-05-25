def fibonnacci(number)
	result=0
	if number==1
		result=1
	elsif number==2
		result=1
	else
		result=fibonnacci(number-1)+fibonnacci(number-2)
	end 
	return result
end

puts "Enter a number: "
number=gets.chomp.to_i
if number==1
	puts "Fibonnacci at 1:1 "
elsif number==2
	puts "Fibonnacci at 2: 1"
else
	puts "Fibonnacci at #{number}: "+ fibonnacci(number).to_s
end
