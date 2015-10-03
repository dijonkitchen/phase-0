# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!

  return list_of_words.min_by {|word| word.length}

  # min = nil
  #
  # if list_of_words == []
  #   return min
  # else
  #   min = list_of_words[0]
  #   for i in 0...list_of_words.length
  #     if list_of_words[i].length < min.length
  #       min = list_of_words[i]
  #     end
  #   end
  # end
  #
  # return min
end
