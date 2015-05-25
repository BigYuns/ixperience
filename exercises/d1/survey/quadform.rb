puts "Hey bru (South African for 'bro'). Let's compute some quadform"
puts "Give me an A: "
a=gets.chomp.to_f
puts "Give me a B: "
b=gets.chomp.to_f
puts "Give me a C: "
c=gets.chomp.to_f
puts "Beep computing boop boop..."

x_1=(-b-Math.sqrt(b*b-4*a*c))/(2*a)
x_2=(-b+Math.sqrt(b*b-4*a*c))/(2*a)
puts "X is either"
puts "#{x_1}"
puts "or"
puts "#{x_2}"
puts "Goodbye!"
