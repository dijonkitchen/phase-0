# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Armani Saldana.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: numbers = [1, 2, 3, 4, 5]
# Output: total
# Steps to solve the problem.
#make method that can an array of numbers
#iterate through the array
#create total
#and add next number to total

# 1. total initial solution

# def total(numbers)
# 	sum = 0
# 	numbers.each do |n|
# 		sum += n
# 	end
# 	return sum
# end


# 3. total refactored solution
def total(numbers)
	numbers.reduce(:+)
end


# 4. sentence_maker pseudocode

# make sure all pseudocode is commented out!
# Input: array of words
# Output: sentence with correct grammar
# Steps to solve the problem.
# define method sentence maker (takes arguement)
#iterate through array of words
#take first word and add a space
#add next word
#add period at end of array

# 5. sentence_maker initial solution

# def sentence_maker(words)
# 	sentence = words[0]#.capitalize!
# 	for i in 1...words.length
# 		sentence += " " + words[i].to_s

# 	end
# 	return sentence.capitalize + "."
# end

# puts sentence_maker(["i", "love", "ruby"])



# 6. sentence_maker refactored solution

def sentence_maker(words)
	words.join(" ").capitalize + "."
end

# puts sentence_maker(["i", "love", "ruby"])
