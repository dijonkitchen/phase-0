# Pad an Array

# I worked on this challenge (Jon Chen and Lars Johnson)

# I spent 2.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Array, minimum # of elements, optional pad value
# What is the output? Array with length equal to minimum # of elements with pad values if needed
# What are the steps needed to solve the problem?
# DEFINE a destructive method that accepts input above defaulting optional padding to nil
  # IF array length is greater than minimum size, output array
  # ELSE loop
    # Add padding for difference between array length and min size
# Output an array with equal length equal to minimum # of elements with pad values if needed

# For non-destructive:
# What is the input? Array, minimum # of elements, optional pad value
# What is the output? Array with length equal to minimum # of elements with pad values if needed
# What are the steps needed to solve the problem?
# DEFINE a non-destructive method that accepts input above defaulting optional padding to nil
  # Iterate over old array, to copy each element into a new array
  # IF array length is greater than minimum size, output array
  # ELSE loop
    # Add padding for difference between array length and min size
# Output an array with equal length equal to minimum # of elements with pad values if needed

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive

#   if array.length >= min_size
#     return array
#   elsif min_size == 0
#     return array
#   else
#     for i in 1..(min_size - array.length) do
#       array << value
#     end

#     return array

#   end

# end


# def pad(array, min_size, value = nil) #non-destructive

#   new_array = []
#   for x in 0..array.length-1
#     new_array[x] = array[x]
#   end
#   p new_array.object_id == array.object_id

#   if array.length >= min_size
#     return new_array
#   elsif min_size == 0
#     return new_array
#   else
#     for i in 1..(min_size - array.length)
#       new_array << value
#     end

#     return new_array

#   end
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    for i in 1..(min_size - array.length)
      array << value
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  for x in 0...array.length
    new_array[x] = array[x]
  end
  if array.length < min_size
    # new_array += (new_array.length...min_size).map { value }
    for i in 1..(min_size - array.length)
      new_array << value
    end
  end
  return new_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# We were able to break it down into smaller steps, but not exactly truly functional steps that only did one thing since we weren't sure exactly how the logic would work.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# We were able to translate it in general. Our pseudocode was fairly general and we weren't sure if it would work until we used real ruby methods.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# passed the tests for the destructive method, but the non-destructive was harder. We spent a lot of time trying to figure out how to make it descructive in an elegant way, but ended up fixing it by just doing an iteration on the array to copy each value.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# We found that we could use the map and flatten_map methods, which allowed for a single line of code, but it was not easier to understand.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# I think our solution is fairly readable. We tried to use descriptive variables and algorithms that we're easier to understand that single line method implementations.

# What is the difference between destructive and non-destructive methods in your own words?

# Destructive methods change the original objects, while non-destructive ones don't. 
