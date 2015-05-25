1. input from two players
each player: one input -index of the board 0-8
2. invalid input: not 0-8 , or already taken 
3. even and odd 
4. 2D array: if spot is filled -> 0,1 true or false cannot put the number. 
5. 0,1 /boolean expression. 
6.  one row/column/diagnal spots is filled with all same player -> the player is going be the winner. 

=============================
#1: player_1=0, player_2=1 
#2: 1) filled or not. 
	2) the winner checking. 
    --> 3 x 3 2D array is the board: each element of the array -> hash {player:, filled:, index:}

 #3: 1) check which spot is not filled. 
	2) put the sutff accrodingtly to the argument (change the value of the key 'filled')

#4: X=player_1
	O=player_2 

#5 :ditect a winner: as lnog as a column/a row/a diagnal filled with the same player. 
=> that person is a winnder
#6: program is going to stop when all the boards are filled up. 
I can use both while : as long as the whole things are filed up or for loop . i will go with while loop
nvm i will use the for loop 
===============================
#TAC
set the player to play =player_1
make a 2D array of hash by using the nested for loop. 
	i =1-9 number. => give to index 

for i in range 1 to 9 
	get user Input for the index. -> make as a global variable 
	if array[user input] is not empty
		puts "Square alraedy taken "
	elsif user input is not an integer
		puts "Invalid Input"
		
	else
		key player=player
		key filled=true
		player=player_2 
		if winnerChecking==true 
			puts "the #{playerargu} is the winnder"
		end
	end 
end

#crete a helper method for checking a winner 
def winnerChecking(playerargu)
	counter=0
	for i 
		for j 
			if row map or column map ==playerargu
				counter+=1
			end

			if counter==3
				
				return true 
			end

	return false 
end 



