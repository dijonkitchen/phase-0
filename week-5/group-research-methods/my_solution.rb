# Research Methods

# I spent [.5] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

##  Chris Savage's solution :
def my_array_finding_method(source, thing_to_find)
  source.select{ |word| word.to_s.include? (thing_to_find) }
end

def my_hash_finding_method(source, thing_to_find)
  result = []
  source.each do |key, value|
    if value == thing_to_find
      result << key
    end
  end
    result
end

# Identify and describe the Ruby method(s) you implemented.
# => .select adds only the words that include the "thing_to_find" to the variable result
# => The .each method iterates through the keys and values (since blocs treat hashes as 2 element arrays), and just checks if the value equals the "thing-_to_find"
# => The << is a push method that pushes the key associated with the value that we wanted to find into the result array.

# Person 2: Paul Gaston Gouron's solution

# Pseudocode my_array_modification_method!
# 1. map all elements in the source that are integers so we can modify them
# 2. increment destructivly (!) mapped integers by the value of thing_to_modify so source is changed

def my_array_modification_method!(source, thing_to_modify)
  source.map! { |i| i.is_a?(Integer)? (i + thing_to_modify) : i }
end

# Pseudocode my_hash_modification_method!
# 1. Iiterate through source with each to obtain the key and values pairs
# 2. modify key in source[key] couples by incrementing by thing_to_modify the values in the hash
# 3. note: no need symbol (!) because the block is destructive itself (=)

def my_hash_modification_method!(source, thing_to_modify)
# source = Hash[source.map {|k,v| [k, thing_to_modify + v ]}]
  source.each do |key, value|
    source[key] = value + thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
# is_a?(Integer) in order to pick only integers contained in source on the map method
# .map! to find elements matching the criteria of beeing an integer in the source
# .each to iterate through the hash structure it in order to modify the value


# Person 3: Jonathan Chen's solution
def my_array_sorting_method(source)
  # source # This line is here to make sure all tests initially fail. Delete it when you begin coding.

  # Input: source array

  # Sort array as if each value was a string
  source.sort_by {|x| x.to_s}

  # Output: sorted array

end

# p my_array_sorting_method(i_want_pets)

def my_hash_sorting_method(source)
  # source # This line is here to make sure all tests initially fail. Delete it when you begin coding.

  # Input: source array

  # Sort hash by age of pets
  source.sort {|pet,age| pet[1] <=> age[1] }

  # Output: sorted hash by age of pets

end

# p my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# I used sort_by to separate each of the values in the array and turn them into strings first.
# For the hash sort, I used sort which can seperate out the pet from the age and sort by their age. 
#


# Person 4 - Noah Heinrich
#Pseudocode
# Accepts array and letter
# iterate through array
# for each element, search for letter
# if element contains letter, delete element

def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if{|word| word.to_s.include?(thing_to_delete)}
end

#Pseudocode
#Accepts hash and key
# iterate through hash
# if key matches inputted key, delete key and value

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if{|pet, age| pet==thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
# I implemented the delete_if method. It iterates through an array or a hash, and will delete any element that matches a certain requirement. In the first case, it deleted any element that contained a given string. In the second, it deleted any hashes that matched the inputted key.
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
