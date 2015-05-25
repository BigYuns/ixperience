def index_of(string_ar,letter_to_find)
	if string_ar.index(letter_to_find)==nil
		puts "-1"
	else
		puts string_ar.index(letter_to_find)
	end
end

index_of("abcdefghijklmnop", "m")
index_of("abcdefghijklmnop", "z")