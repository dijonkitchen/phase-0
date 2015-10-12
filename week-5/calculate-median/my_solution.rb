# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? Array of numbers
# What is the output? (i.e. What should the code return?) Median value
# What are the steps needed to solve the problem?
# DEFINE method
# Count size of array
# IF an odd length,
  # THEN return the (size modulo 2 + 1)th element
# ELSE
  # Return the average of (size modulo 2)th element and (size modulo 2 + 1)th element

# 1. Initial Solution
# def median(numbers)
#   numbers.sort!
#
#   if numbers.size % 2 != 0
#     return numbers[numbers.size / 2]
#   else
#     return (numbers[numbers.size / 2 - 1] + numbers[numbers.size / 2]).to_f / 2
#   end
# end

# 3. Refactored Solution

def median(numbers)
  numbers.sort!
  count = numbers.size

  if count % 2 != 0
    return numbers[count / 2]
  else
    return (numbers[count / 2 - 1] + numbers[count / 2]).to_f / 2
  end
end


# 4. Reflection
