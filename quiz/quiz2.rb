Q1. 
"Zoo Lander"

Q2
8

Q3
def silly_check(argument)
	if argument<5
		puts "The number is less than 5"
	else 
		puts "The number is greater than or equal to 5"

	end 
end


Q4.  
def funity(array_argument)
	array_argument<<"fun"s

end 

Q5. 
def more_fun(array_argument)
	array_argument[0]="FUN FUN"
	array_argument
end 

Q6. 
class Dog
	def initialize(name)
		@name=name
	end

	def bark
		puts "Ruff ruff"
	end

end

puppy=Dog.new("candy")
puppy.bark 

Q7 
undefined method called 'speak'

Q8. 
class Insect
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end
  def age_in_years
  	@age_in_days/365.0
  end

end

Q9. 
class Person
	def initialize(age)
		@age=age
	end

	def age_update(argument)
		@age=argument 
	end
	def age_return
		@age
	end
end 
 
 #demonstration
 yunny=Person.new(21)
 yunny.age_return
 yunny.age_update(30)
 yunny.age_return

 Q10
 class Person
 	attr_accessor :age
	def initialize(age)
		@age=age
	end
end 

wonil=Person.new(50)
wonil.age
wonil.age=21
wonil.age

