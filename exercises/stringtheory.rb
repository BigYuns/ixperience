

def piglatinify(string)
	if string.class!=String
		puts "invalid input"
		puts string.class
	else
		array=string.split(//)
		placehold=array[0].downcase

		
			if placehold!=array[0]
				array=array.join.tr(string[1],string[1].upcase).split(//)
			end

			
			if array[0]=="a" ||array[0]=="e" ||array[0]=="i" ||array[0]=="o"||array[0]=="u"
				array<<"way"
				return puts array.join
			end
		first_letter=placehold
		array.delete(array[0])
		array<<first_letter+"ay"
		puts array.join
	end	
end


 alpha = ('a'..'z').to_a
# vowels = %w[a e i o u]
# consonants = alpha - vowels


piglatinify("latin")
piglatinify("igloo")
piglatinify("Ruby")
piglatinify("egg")


#how can the program differentiate igloo and egg? both of them start with vowls. 
#constants. how does it work? 
