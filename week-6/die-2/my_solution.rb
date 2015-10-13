# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: Random item from array of strings
# Steps:
# DEFINE method that takes an array of strings
#   Find size of array
#   Generate random number based on size
#   Output the random string in array based on random number



# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#
#     if @labels == []
#       raise ArgumentError.new("Array cannot be empty")
#     else
#       @sides = @labels.size
#     end
#   end
#
#   def sides
#     @sides
#   end
#
#   def roll
#     if @sides == 1
#       return @labels[0]
#     else
#       return @labels[rand(@sides)]
#     end
#   end
#
# end


# Refactored Solution

class Die
  attr_reader :sides

  def initialize(labels)
    @labels = labels

    if @labels == []
      raise ArgumentError.new("Array cannot be empty")
    else
      @sides = @labels.length
    end
  end

  def roll
      @labels[rand(@sides)]
  end

end


=begin # Reflection
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

This new die class was a little more complicated since it took in an array of strings, rather than just a number. It also needed then to raise an ArgumentError if there was an empty array. Otherwise, it wasn't too different. The output would need to be a random number that's based on the sides and instead it's the index of an array.

What does this exercise teach you about making code that is easily changeable or modifiable?

This style makes it so that it's easy to change things and do the same thing to many things at once. Not only is it cleaner, it'll make modifying things much easier and faster.

What new methods did you learn when working on this challenge, if any?

I used the attr_reader for the first time to make the class definition a little more concise.

What concepts about classes were you able to solidify in this challenge?

Using attr_reader, raising ArgumentErrors, length/size, and rand were solidified. Of particular note, even though we've been using the length method for a long time, I found that size does the same thing and have been using that. Unfortunately, in this exercise, size and sides is very similar and I couldn't solve one failure for a long time because of that typo. When I refactored, I used length instead for readability. 

=end
