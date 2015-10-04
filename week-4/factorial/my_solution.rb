# Factorial

# Jon Chen and Armani Saldana worked on this challenge.


# Your Solution Below
def factorial(number)
  # Your code goes here

  total = 1

  for i in number.downto(1) do
    total *= i
  end

  # # Store number as count
  # count = number
  #
  # # Create an empty array
  # all_numbers = []
  #
  # # Loop until zero
  # while count > 0 do
  #   # Store number in array
  #   all_numbers << count
  #   # Decrease count by one
  #   count -= 1
  # end
  #
  # total = 1
  #
  # all_numbers.each {|n| total *= n}
  #
  return total

end
