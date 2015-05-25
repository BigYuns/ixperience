puts "Enter a number;"
num=gets.chomp.to_i
num1=1
num2=1
temp=0
i=1

while (i<num)
	temp=num1
	num1=num2
	num2=temp+num1
	i=i+1
end
puts "Fibonnacci at #{num}: #{num1} "