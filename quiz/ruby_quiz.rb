# Yay shark cage diving! First, we will define a Fish class.

class Fish
  # STEP 1. Fish need 3 arguments to be created:
  # 1) color, which is a string indicating the color of the fish
  # 2) name, which is a string indicating the name of the fish
  # 3) speed, which is an integer indicating the speed of the fish
  # Replace the word args below with the correct arguments.
  def initialize(color, name, speed)
    @color=color
    @name=name
    @speed=speed 
    @food=[]
    # STEP 2: save the inputs as instance variables. You can name them whatever they want.
    # Also initialize an instance variable called food, that is always initiallized as an emtpy array
  end

  def get_speed
    if @speed>20
      puts "This fish swims super fast!"
    else
      puts "This fish is kinda slow"
    end

  end


  # STEP 3: We want to know how fast the fish swims! Define a method called "get_speed".
  # The method first checks if the fish's speed is greater than 20. 
  # If the fish's speed is greater than 20, return "This fish swims super fast!"
  # Otherwise, return This fish is kinda slow."
end


# STEP 4: Now we want to create a Shark class that is a child class of Fish. What do 
# we need to add to indicate that Shark inherits from Fish?
class Shark < Fish 
  # STEP 5: Define a method called eat that takes an argument called fish.
  # In the method, append the new fish into the instance variable food.
  def eat(fish)
    @food<<fish 
    @food
  end

  # STEP 6: SHARKS ARE HUNGRY!!! Define a method called binge_eat, that takes in an array
  # of Fish called lots_of_food. Re-use the eat method defined in STEP 5 and apply it
  # to all elements in the array to make sure your shark eats all the food!

  def binge_eat(lots_of_food)
    self.eat(lots_of_food)

  end

  def what_i_ate
    puts "I've eaten #{@food}!"
  end
end

# STEP 7: Let's instantiate some fish!!! Create an instance of fish in the variable "nemo", who is orange, 
# named Nemo, and swims 10 km/hr. Call "get_speed" on your new instance and puts the return value.
goldfish=Fish.new("nemo", "orange", 10)
goldfish.get_speed

# STEP 8: MORE FISH! Create 2 more instances of different types of fish, and save them to 
# variables. You decide what you want to call them!
blue_ray=Fish.new("Blue Ray", "blue", 20)
black_marlin=Fish.new("Black Marlin", "black", 25)

# STEP 9: Uh oh. There's a shark in these waters. Bruce stopped being vegetarian, and now says
# "Fish are food, not friends". Yikes. Initialize an instance of Shark called Bruce who is gray
# and can swim 40 km/hr. Save it to a variable called bruce.
bruce=Shark.new("Bruce", "Gray", 40)

# STEP 10: BRUCE IS HUNGRY. Call "binge_eat" on bruce. Create an array of the Fish instances you 
# just created, and use that as the method arguments.
array_fish=[goldfish,blue_ray, black_marlin]
bruce.binge_eat(array_fish)

# STEP 11: Bruce is happy. Call what_i_ate to see what he ate.

bruce.what_i_ate