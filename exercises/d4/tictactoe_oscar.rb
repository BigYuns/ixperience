# tictactoe.rb

# How will you keep track of whose turn it is?
# using a counter, if its odd, player 1's turn, if it's even, player 2's turn.

# What data structure will you use to keep track of the board? You only
#   know two (Array, Hash), but remember they can be nested (meaning an
#   array can contain another array—it can even contain a hash that contains
#   another hash, though unclear if that will be useful :P)
#hash, with number of box as key, "X" or "O" as value.

# When a player makes a move, what should happen?
# adds to the hash if not there already

# How do you keep track of which squares have Xs and which have Os?
#using the hash

# How do you detect a winner?
# check if the rows/columns/diagonals have the same values in the hash 

# When does the program stop? Is there a loop? If so, what kind?
# when someone wins or the games over, the boolean that runs the while loop changes

bool = true
i = 0
hash = {}
display = {}
while bool
	i += 1 
	if i%2 == 1
		puts "Player 1:"
		playerval = "X"
	else
		puts "Player 2:"
		playerval = "O"
	end
	input = gets.strip
	inputnum = input.to_i
	if !(input == "0" || (inputnum > 0 && inputnum < 9))
		puts "Error: Invalid input"
		i = i-1
	elsif hash.has_key?(inputnum)
		puts "Error: Square already taken"
		i = i-1
	else 
		hash[inputnum] = playerval 
		puts hash
	end

	

	puts "  " + hash[0].to_s + " | " + hash[1].to_s + " | " + hash[2].to_s
	puts "---+---+---"
	puts "  " + hash[3].to_s + " | " + hash[4].to_s + " | " + hash[5].to_s
	puts "---+---+---"
	puts "  " + hash[6].to_s + " | " + hash[7].to_s + " | " + hash[8].to_s

	if (hash[0] == hash[1] && hash[1] == hash[2] && hash[0] != nil) || (hash[3] == hash[4] && hash[4] == hash[5] && hash[5] != nil) || (hash[6] == hash[7] && hash[7] == hash[8] && hash[8] != nil) || (hash[0] == hash[3] && hash[3] == hash[6] && hash[6] != nil) || (hash[1] == hash[4] && hash[4] == hash[7] && hash[7] != nil) || (hash[2] == hash[5] && hash[5] == hash[8] && hash[8] != nil) || (hash[0] == hash[4] && hash[4] == hash[8] && hash[8] != nil) || (hash[2] == hash[4] && hash[4] == hash[6] && hash[6] != nil) 
		if playerval == "X"
			puts "Player 1 wins!"
			bool = false
		else 
			puts "Player 2 wins!"
			bool = false
		end
	elsif hash.size == 9
		puts "Cats game!"
		bool = false
	end

end