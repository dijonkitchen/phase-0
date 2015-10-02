# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#     errors.rb
# 2. What is the line number where the error occurs?
#     170
# 3. What is the type of error message?
#     syntax error
# 4. What additional information does the interpreter provide about this type of error?
#     unexpected end of input, expecting keyword end
# 5. Where is the error in the code?
#     Line 16
# 6. Why did the interpreter give you this error?
#     The while loop or method is missing it's closing end.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#     36
# 2. What is the type of error message?
#     undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#     It's in the main object, and there's a name error
# 4. Where is the error in the code?
#     either the variable isn't assigned anything or if it's a method, it's not declared properly with def.
# 5. Why did the interpreter give you this error?
#     It doesn't understand if there is a variable or method.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#     50
# 2. What is the type of error message?
#     undefined method
# 3. What additional information does the interpreter provide about this type of error?
#     the undefined method is named cartman in the main object
# 4. Where is the error in the code?
#     The method should be properly declared with def and end.
# 5. Why did the interpreter give you this error?
#     It doesn't explicitly know this is a method.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end
#
# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#     65
# 2. What is the type of error message?
#     wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#     It's for the method cartmans_phrase and it expects an argument of 1 from line 69 when the method doesn't have any parameters.
# 4. Where is the error in the code?
#     Either line 69's call of the method excludes any arguments or you can modify the method to accept a string as a parameter.
# 5. Why did the interpreter give you this error?
#     Because there is a conflict between the method definition and the method called in line 69.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end
#
# cartman_says

# 1. What is the line number where the error occurs?
#     84
# 2. What is the type of error message?
#     wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#     For method cartman_says, it expects one argument instead of none.
# 4. Where is the error in the code?
#     Line 88 should pass in a string.
# 5. Why did the interpreter give you this error?
#     When only cartman_says is called, the method doesn't have an offensive message to output.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end
#
# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#     105
# 2. What is the type of error message?
#     wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#     For method cartmans_lie, it expects two arguments instead of one.
# 4. Where is the error in the code?
#     Line 109 should include a name along with the string.
# 5. Why did the interpreter give you this error?
#     Without the extra argument, the method cannot output correctly.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#     124
# 2. What is the type of error message?
#     string cannot be coerced into fixnum
# 3. What additional information does the interpreter provide about this type of error?
#     It's in main.
# 4. Where is the error in the code?
#     5 cannot be duplicated by a string, it needs to be string * a number.
# 5. Why did the interpreter give you this error?
#     The * method does not accept a string as an argument because that doesn't make sense.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#     139
# 2. What is the type of error message?
#     divide by zero
# 3. What additional information does the interpreter provide about this type of error?
#     In main.
# 4. Where is the error in the code?
#     Mathematically, dividing by zero is undefined, so it cannot assign the variable that.
# 5. Why did the interpreter give you this error?
#     You can't divide something by zero.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#     155
# 2. What is the type of error message?
#     cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#     It shows the relative path where it's trying to look for the file.
# 4. Where is the error in the code?
#     Either the name is wrong, location is wrong, or the file doesn't exist. You'd need to create a file with that name or put it in the right place.
# 5. Why did the interpreter give you this error?
#     It's trying to require a file that it cannot locate.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
#
# They were all pretty easy, but the first one where you're missing an end was the hardest to read. It's just hard to see if you have a lot of code.
#
# How did you figure out what the issue with the error was?
#
# Because the error in the terminal was referencing the last line in the file, it was a clue that something was missing. And in looking at the indentation, you'll see it's misaligned.
#
# Were you able to determine why each error message happened based on the code?
#
# Yes, they were a little cryptic, but fairly straightforward.
#
# When you encounter errors in your future code, what process will you follow to help you debug?
#
# I'll always read the error message since it includes the line reference number as well as a brief description of what's going wrong. 
