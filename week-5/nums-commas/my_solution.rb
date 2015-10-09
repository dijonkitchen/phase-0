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

def separate_comma(pos_int)
  commaed = pos_int.to_s

  if pos_int < 1000
    return commaed
  ELSE
    commaed.Reverse
    for i in 0...commaed.length
      
    end

  end

end

# 2. Refactored Solution




# 3. Reflection
