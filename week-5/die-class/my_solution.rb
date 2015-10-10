# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: random number given number of sides
# Steps:

# Define class Die
# Define method with number of sides as Input
  # If the number of sides is less than 1, output error
  # initializes sides variable
# Define method that gets number of sides
  # Output sides
# Define method that rolls dice
  # Output generated random number given sides


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     # code goes here
#     if sides < 1
#       raise ArgumentError.new("sides cannot be less than 1")
#     else
#       @sides = sides
#     end
#   end
#
#   def sides
#     # code goes here
#     @sides
#   end
#
#   def roll
#     # code goes here
#     rand(@sides) + 1
#   end
# end

# 3. Refactored Solution

class Die
  def initialize(sides)
    # code goes here
    sides < 1 ? (raise ArgumentError.new("sides cannot be less than 1")) : @sides = sides
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    rand(@sides) + 1
  end
end

# 4. Reflection

# What is an ArgumentError and why would you use one?

# It's when you want to raise an error because something went wrong. It's good for data validation to make sure people send the right inputs into your methods.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# Only the raising of the ArgumentError and rand methods were new. Rand outputs a random number between zero and some input, so I had to add one to it. ArgumentError needs to be raised and since it's a long argument, it needs a parentheses surrounding the if statement in one line.

# What is a Ruby class?

# A Ruby class is an object that can create other instances of itself.

# Why would you use a Ruby class?

# You use it to create multiple objects with the same behaviors (i.e., methods) that can be used on all of them.

# What is the difference between a local variable and an instance variable?

# Local variables can only be used in a method or block, while instance variables can be used throughout a class definition as well as it's instances.

# Where can an instance variable be used?

# Instance varibles can be used throughout it's class as well as in their instance objects. 
