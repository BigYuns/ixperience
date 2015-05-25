
def hsaH(argument)
	hash1={}
	argument.each do |key, value|

	hash1.store(value,key)
	end

	puts "#{hash1}"
end

hsaH({:a=> "3", :b=>"d"})
hsaH({:a => ["b", "c"]})
hsaH({:a => ["b", {:c => "d"}]})