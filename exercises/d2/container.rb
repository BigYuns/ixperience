puts "Welcome to container builder"
h=Hash.new{|h,k| h[k]=''}
value=1
while true
	puts "What can I do for you?"
	user_input=gets.chomp
	if h.has_key?("#{user_input}")==true
		value=value+1
	elsif h.has_key?("#{user_input}")==false
		value=1
	end

	h.merge!({"#{user_input}"=>value}) 
	
	puts h 
end 