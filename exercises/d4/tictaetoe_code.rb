player_1=0 
player_2=1
player="Player 1"
hash={
			:player => player_1,
			:filled => false ,
			:index => i
		} 

board=Array.new(3){Array.new(3)}
i=1

for board.each do |sub|
		sub.each do |hash|
		hash={
			:player => player_1,
			:filled => false ,
			:index => i
		} 
	on	i+=1
		end
	end
end

index=1
while index<10 
	puts="#{player}: "
	user_input=gets.chomp
	if board[index-1].empty?==false
		puts "Square alraedy taken "
	elsif user_input.class!=Fixnum
		puts "Invalid Input"
	else
		board[index-1][:filled]=false
		if winnerchecking(board, board[index-1][:player])==true 
			puts "the #{board[index-1][:player]} is the winnder"
		else
			if board[index-1][:player]=player_1
				board[index-1][:player]=player_2
				player="Player2"
			else
				board[index-1][:player]=player_1
				player="Player1"
			end
		end
	end

end


#crete a helper method for checking a winner 
def winnerchecking(board, playerargu)
	require 'matrix'
	j=0
	counter=0 
	while j<3
		for i in 0..2 
			if board[j][i][:filled]==true && board[j][i][:player]==playerargu 
				counter+=1
				end


			if counter==3
				return true 
			end

		end
	end
	return false 
end


