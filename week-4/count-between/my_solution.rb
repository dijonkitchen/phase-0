# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  count = 0

  if list_of_integers == []
    return count
  elsif lower_bound == upper_bound
    return list_of_integers.length
  elsif upper_bound < lower_bound
    return count
  else
    for i in 0...list_of_integers.length
      if list_of_integers[i] >= lower_bound && list_of_integers[i] <= upper_bound
        count += 1
      end
    end

    return count

  end

end
