# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A comma-seperated integer as a string
# What are the steps needed to solve the problem?
# DEFine method with one positive integer as a parameter
  # IF number length is less than 4
    # return number unchanged
  # ELSE
    # Change number to a string
    # Reverse string
    # FOR loop string length
      # IF modulo 3 is 0
        # Insert a comma
    # Return Reverse string back to normal



# 1. Initial Solution

# def separate_comma(pos_int)
#   int_string = pos_int.to_s
#
#   if pos_int < 1000
#     return int_string
#   else
#     commaed = int_string.reverse!
#     new_index = 2
#
#     for orig_index in 0...int_string.length
#       if orig_index % 3 == 0 && orig_index > 0
#         commaed = commaed[0..new_index] + "," + int_string[orig_index...int_string.length]
#         new_index += 4 # 3 digits + a comma
#       end
#     end
#
#     return commaed.reverse
#   end
# end

# 2. Refactored Solution

def separate_comma(pos_int)

  int_string = pos_int.to_s.reverse!

  for i in (int_string.size-1).downto(3)
    if i % 3 == 0
      int_string.insert(i,",")
    end
  end

  int_string.reverse
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# I broke the problem down with pseudocode. At first I followed the test results and tried to solve one at a time, then I decided it was hard to figure out where the commas go unless you look at the number backwards. I would take a new string and then add a comma, then add the old string so that you could just keep going through each character. In the end, I would reverse it back to normal.

# Was your pseudocode effective in helping you build a successful initial solution?

# It was helpful in general because I could focus on syntax instead of logic.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

# I used downto and insert; I wanted to use join and each_slice, but wasn't able. It was hard to get use different data types and their appropriate methods.

# How did you initially iterate through the data structure?

# I used a for loop that went through each number at a time.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# Yes, it's a lot cleaner because I refactored the logic to add commas backwards instead of forwards so I didn't have to store extra variables and keep the place of each index. 
