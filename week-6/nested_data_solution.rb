# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

# Jeff #1
p array[1][1][2][0]


# jon
p array[1][1][2][1]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

#Jeff
p hash[:outer][:inner]["almost"][3]


# jon
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================


# Jeff
p nested_data[:array][1][:hash]



# jon
p nested_data[:array][1][:hash]

# ============================================================





# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array =  [
          5,
          [10, 15],
          [20,25,30],
          35
]

p number_array

number_array.each_index { |index|
  if number_array[index].is_a? Integer
    number_array[index] += 5
  else
    number_array[index].each_index { |index2|
      number_array[index][index2] += 5
    }
  end

}

p number_array


# Working with arrays of more than two dimensions has its own unique challenges. Create a startup name generator that adds "ly" to the end of the words in each sub-array. (So if you passed in "Bit" or "Optimize" you would get "Bitly" and "Optimizely."

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Initial Solution
# startup_names.each_index { |index|
#
#   if startup_names[index].is_a? String
#     startup_names[index] += "ly"
#   else
#     startup_names[index].each_index { |index2|
#       if startup_names[index][index2].is_a? String
#         startup_names[index][index2] += "ly"
#       else
#         startup_names[index][index2].each_index { |index3|
#           startup_names[index][index2][index3] += "ly"
#         }
#       end
#     }
#   end
# }

# Second solution

# startup_names.each_index { |index|

#   if startup_names[index].is_a? Array

#     startup_names[index].each_index { |index2|

#       if startup_names[index][index2].is_a? Array

#         startup_names[index][index2].each_index { |index3|

#           startup_names[index][index2][index3] += "ly"
#         }

#       else

#         startup_names[index][index2] += "ly"
#       end
#     }
#   else
#     startup_names[index] += "ly"
#   end
# }

# Recursive

# def startup_recurse (array)
#   array.each_index { |i|
#     if array[i].is_a? Array
#       startup_recurse(array[i])
#     else
#       array[i] += "ly"
#     end
#   }
# end

# One-Line Recursion

def startup_recurse (array)
  array.each_index { |i|
     (array[i].is_a? Array) ? startup_recurse(array[i]) : array[i] += "ly"
  }
end


p startup_recurse(startup_names)

=begin
What are some general rules you can apply to nested arrays?

There are as many brackets/braces as there are nested levels. We found it easier to go from the deepest nest up to the highest nesting level and to reorder the collection visually so that it's easier to see.

What are some ways you can iterate over nested arrays?

You can use a FOR loop for each nest level or you can use the each method.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We didn't find any special methods to apply other than basic FOR loops and the each method. In the end, after many revisions, we decided to use a recursive method we wrote ourselves to exhaust any level of nesting. 

=end
