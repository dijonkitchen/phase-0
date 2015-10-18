# Your Names
# 1) Jonathan Chen
# 2) Doug Tsui

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


# defines method to calculate serving sizes
# Takes in item to make and baking units you have

def serving_size_calc(item_to_make, baking_units)
  # Creates a hash table, where the key is the item to make
  # Value is the baking units required
  cook_book = {"cookie" => 1, "cake" =>  5, "pie" => 7}

#   if cook_book[item_to_make] == nil
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

  fail "#{item_to_make} is not a valid input" unless cook_book.has_key?(item_to_make)


=begin

  error_counter = 3


  cook_book.each do |food|
    p food
    #looking for cook_book[["cookie", 1]] => cook_book at key: Array, ["cookie", 1]

    #Inputing a key that doesn't exist, will be nil
    #Error_counter can only be 3 or 0 in this scenario

    #This line of code will be nil = ???, need to change
    if cook_book[food] != cook_book[item_to_make]
      p error_counter += -1
    end
  end

  # Error counter stays at 3 if key doesn't exist, 0 if key exists
  # Raise an ArgumentError when key is not in hash
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
=end

  # Sets serving size to the value in the cook_book hash and references zeroth item for integer
  serving_size = cook_book[item_to_make]

  # Sets serving size mod to the remainder of baking units / serving size above
  leftovers = baking_units % serving_size


  #Takes the serving size mod and checks if it 0 or something else
  #Prints out a different string if mod is 0 or something else

  puts "Calculations complete: Make #{baking_units/serving_size} of #{item_to_make}."

  if leftovers != 0
    puts " You have #{leftovers} leftover ingredient(s). If you used the rest of your ingredients, you could have the following:"

    case item_to_make

    when "pie"
      serving_size_calc("cake",leftovers)
    when "cake"
      serving_size_calc("cookie",leftovers)
    end
  end
end

# p serving_size_calc("pie", 7)
serving_size_calc("pie", 13)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

# p serving_size_calc("chicken pie", 5)


#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

It's very important to choose the proper names for variables and to make the logic readable. When it isn't, it's awfully hard to understand for others.

Did you learn any new methods? What did you learn about them?

We learned the fail, has_key?, and value_at methods. fail was the same as raise but is the latest best practice to use for readability, has_key? returns true if the hash has the key in it, and value_at outputs the value for a given key or keys of a hash.

What did you learn about accessing data in hashes?

When you access data in a hash, you should either reference the key or the value, not the entire pair, otherwise it's hard to make any conditional statements on it that are easy to understand.

What concepts were solidified when working through this challenge?

I now definitely know why it's so important to have good variable names and why you should utilize Ruby's syntactic sugar. It's a lot easier to read and understand since it's more similar to english and thus new people reading your program. 

=end
