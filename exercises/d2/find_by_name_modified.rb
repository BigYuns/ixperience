people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]


def find_by_name(array_ag,string_ag)
	result=[]
	array_ag.each do |hash|
		if hash[:name]==string_ag 
			result.push(hash)
		end		

		if result.length==0
			result=[]																																																																		                                            BB
	end

	puts "#{result}"
end

find_by_name(people, "ski")