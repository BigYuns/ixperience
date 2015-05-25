require 'matrix'
player_1="X"
player_2="O"
player="Player 1"

i=0 
for i in 1..9
hash={
	:player => player_1,
	:filled => false ,
	:index => i 
} 
end 


board=[
	[hash, hash, hash],
	[hash, hash, hash],
	[hash, hash, hash]
]



winning_board=[
[2, 2, 2],
[2, 2, 2],
[2, 2, 2]
]

transposed_winning_board=Matrix[*winning_board]


for col in 0..2 do 

checking_player_1_condition=winning_board.map{|a| a[col]}==[0,0,0] || transposed_winning_board.map{|b| b[col]}==[0,0,0] || 
				(winning_board[0][0]==0 && winning_board[1][1]==0 && winning_board[2][2]==0) ||
				(winning_board[0][2]==0 && winning_board[1][1]==0 && winning_board[2][0]==0)

checking_player_2_condition=winning_board.map{|a| a[col]}==[1,1,1] ||transposed_winning_board.map{|b| b[col]}==[1,1,1] || 
				(winning_board[0][0]==1 && winning_board[1][1]==1 && winning_board[2][2]==1) ||
				(winning_board[0][2]==1 && winning_board[1][1]==1 && winning_board[2][0]==1)


end 

j=0 
while j<9

	for r in 0..2 do 
		board[r].each_with_index do |hash, index|
				puts "#{player}: "
				user_input=gets.chomp.to_i 

			if hash[:index]==user_input 
			
				if hash[:filled]==true 
					i+=1
					puts "Square are alraedy taken"
				elsif user_input.class!=Fixnum || user_input<0 || user_input>8 
					i+=1
					puts "Invalid input"
				else 
					hash[:filled]=true
					i+=1
					if hash[:player]==player_1
						winning_board[r][index]=0
					else
						winning_board[r][index]=1
					end

					if checking_player_1_condition==true 
						return puts "Player 1 won the game! "
					elsif checking_player_2_condition==true
						return puts "Player 2 won the game! "
					else
						if hash[:player]==player_1
							board[r][index][:player]=player_2
							player="Player 2"

						else
							board[r][c][:player]=player_1
							player="Player 1"

						end
					end

				end
			end

				


		end
	end
end 





