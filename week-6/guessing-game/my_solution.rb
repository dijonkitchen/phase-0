# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a number
# Output: high, low, or correct depending on the number versus the answer
# Steps:
# DEFINE method that takes in a number
#   IF number is the same as answer
#     Output correct
#   ELSIF number is higher than answer
#     Output number is high
#   ELSE
#     Output number is low
#


# Initial Solution
#
# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#   end
#
#   # Make sure you define the other required methods, too
#   def guess(number)
#     @number = number
#
#     if @number < @answer
#       return :low
#     elsif @number > @answer
#       return :high
#     else
#       return :correct
#     end
#   end
#
#   def solved?
#     if @number != @answer
#       return false
#     else
#       return true
#     end
#   end
#
#
# end




# Refactored Solution

class GuessingGame

  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  # Make sure you define the other required methods, too
  def guess(number)
    @number = number
    solved? ? :correct : @number > @answer ? :high : :low
  end

  def solved?
    @number == @answer ? true : false
  end

end

=begin # Reflection

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables and methods do something to the Class's object. In this case, it had methods for checking if a guess was correct or not and if the game was solved.

When should you use instance variables? What do they do for you?

You should use instance variables when you're making a Class that has data that is used in multiple methods. They allow you to use that data and transform it or calculate things off of it in other methods.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is checking when something is true or false. It wasn't that complicated to do that in this problem since there weren't very many scencarios.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

By using symbols, you know exactly what an object is. There is no confusion over what the state of the object is: correct, high, or low. 

=end
