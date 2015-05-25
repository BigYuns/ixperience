
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

	array_ag.each do |hash|
		result={}
		if hash[:name]==string_ag 
			result=hash
			return puts result
		else
			result={}
			return puts result
		end

	end
end

find_by_name(people, "ski")