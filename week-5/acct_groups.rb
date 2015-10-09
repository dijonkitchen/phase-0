# List of everyone in cohort
copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jefferey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

#define method that takes in an array of people, the smallest group wanted, and the largest group wanted
def accountability_groups(cohort,low,high)
  for i in high.downto(low)
    # check divisability of array
    if cohort.size % i >= low
      # slice up arry into groups of at least low range if possible
      return cohort.shuffle.each_slice(i) {|group| p group}
    end
  end

  # output error if not possible
  p "No possibilities given your range"

end

accountability_groups(copperheads,3,5)

# What was the most interesting and most difficult part of this challenge?

# The most interesting part was that there was a range of possible answers. What was difficult was figuring out the logic of what was possible, or if it was possible to have an exhaustive set of scenarios given the range of 3-5 people in a cohort.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I feel my ability to write pseudocode is similar. I like integrating it into the code so that I can modify and change it as I discover new parts of the problem.

# Was your approach for automating this task a good solution? What could have made it even better?

# I think my approach for automating this task was pretty good. I was able to account for a range of possiblities and if that doesn't to return an error message. I was also able to randomize the groups so that they wouldn't always be in alphabetical order. It would be even better if I accepted input from the user and checked if it was possible, and if it wasn't to show them a possible solution range.

# What data structure did you decide to store the accountability groups in and why?

# I chose to store them in arrays since each group would be some set size. There's nothing particulary unique about each group that would require a hash, but that could be used to for group numbers.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned to chain together many methods and output them out. Newer methods I utilized were size instead of length since it's shorter, downto to increment down, shuffle to randomize the groups, and each_slice to slice up the initial array of the cohort. 
