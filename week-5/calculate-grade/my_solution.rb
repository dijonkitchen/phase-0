# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? Array of test scores
# What is the output? (i.e. What should the code return?) Letter grade as a string
# What are the steps needed to solve the problem?
# See below


# 1. Initial Solution
# Define method with array of test scores as input
# def get_grade(test_scores)
#   # Iterate over test scores
#   # Get total of scores
#   # Get total count of scores
#   # Calculate average test scores
#   total = test_scores.map {|score| score.to_i}
#
#   avg = total.reduce(:+) / test_scores.count
#   # Match average score to a letter grade
#   # Return letter grade
#   if avg >= 90
#     return "A"
#   elsif avg >= 80
#     return "B"
#   elsif avg >= 70
#     return "C"
#   elsif avg >= 60
#     return "D"
#   else
#     return "F"
#   end
# end

# 3. Refactored Solution

def get_grade(test_scores)
  # Iterate over test scores
  # Get total of scores
  # Get total count of scores
  # Calculate average test scores
  avg = test_scores.reduce(:+).to_f / test_scores.size
  # Match average score to a letter grade
  # Return letter grade
  if avg >= 90
    return "A"
  elsif avg >= 80
    return "B"
  elsif avg >= 70
    return "C"
  elsif avg >= 60
    return "D"
  else
    return "F"
  end
end


# 4. Reflection
