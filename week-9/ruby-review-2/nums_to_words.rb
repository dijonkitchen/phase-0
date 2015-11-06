# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
=begin

DEFINE a method that accepts single digit numbers and changes them into words
  CASE statement for different numbers
  WHEN 0 then "zero"
  WHEN 1 then "one"
  WHEN 2 then "two"
  ...
  WHEN 9 then "nine"

DEFINE a method that accepts numbers 10-19 and changes them into words
  CASE statement for different numbers
  WHEN 10 then "ten"
  WHEN 11 then "eleven"
  WHEN 12 then "twelve"
  WHEN 13 then "thirteen"
  WHEN 14 then "fourteen"
  ...
  WHEN 19 then "nineteen"

DEFINE a method that accepts numbers 20-99 and changes them into words
  IF number >= 20
    RETURN "twenty" + single digit method
  ELSIF number >= 30
    RETURN "thirty" + single digit method
  ELSIF number >= 40
    RETURN "forty" + single digit method
  ...
  ELSIF number >= 90
    RETURN "ninety" + single digit method

DEFINE a method that accepts numbers 100-999 and changes them into words
  IF number >= 100
    RETURN single digit method on first character + "hundred" + double-digit method

DEFINE a method that accepts numbers 1000-99999 and changes them into words
  IF number >= 100
    RETURN single digit method on first character + "hundred" + double-digit method

... and so on

=end
# Initial Solution

# def to_word(number)
#   if number < 0
#     'negative ' + to_word(-number)
#   elsif number == 0
#     'zero'
#   elsif number < 10
#     single(number)
#   elsif number < 20
#     small_double(number)
#   elsif number < 100
#     big_double(number)
#   elsif number < 1_000
#     hundreds(number)
#   elsif number < 1_000_000
#     thousands(number)
#   end
# end
#
# def single(number)
#
#   if number == 0
#     return ''
#   end
#
#   words = [
#     'one',
#     'two',
#     'three',
#     'four',
#     'five',
#     'six',
#     'seven',
#     'eight',
#     'nine'
#   ]
#
#   words[number - 1]
#
# end
#
# def small_double(number)
#   words = [
#     'ten',
#     'eleven',
#     'twelve',
#     'thirteen',
#     'fourteen',
#     'fifteen',
#     single(6) + 'teen',
#     single(7) + 'teen',
#     single(8) + 'teen',
#     single(9) + 'teen',
#   ]
#
#   words[number.to_s[-1].to_i]
#
# end
#
# def big_double(number)
#   if number >= 90
#     'ninety ' + single(number.to_s[-1].to_i)
#   elsif number >= 80
#     'eighty ' + single(number.to_s[-1].to_i)
#   elsif number >= 70
#     'seventy ' + single(number.to_s[-1].to_i)
#   elsif number >= 60
#     'sixty ' + single(number.to_s[-1].to_i)
#   elsif number >= 50
#     'fifty ' + single(number.to_s[-1].to_i)
#   elsif number >= 40
#     'forty ' + single(number.to_s[-1].to_i)
#   elsif number >= 30
#     'thirty ' + single(number.to_s[-1].to_i)
#   elsif number >= 20
#     'twenty ' + single(number.to_s[-1].to_i)
#   end
# end
#
# def hundreds(number)
#   single(number.to_s[-3].to_i) + ' hundred ' + to_word(number.to_s[-2..-1].to_i)
# end
#
# def thousands(number)
#   to_word(number.to_s[-6..-4].to_i) + ' thousand ' + to_word(number.to_s[-3..-1].to_i)
# end

# Refactored Solution

def to_word(number)
  if number < 0
    'negative ' + to_word(-number)
  elsif number == 0
    'zero'
  elsif number < 10
    single(number)
  elsif number < 20
    small_double(number)
  elsif number < 100
    big_double(number)
  elsif number < 1_000
    hundreds(number)
  elsif number < 1_000_000
    thousands(number)
  end
end

def single(number)

  if number == 0
    return ''
  end

  words = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine'
  ]

  words[number - 1]

end

def small_double(number)
  words = [
    'ten',
    'eleven',
    'twelve',
    'thirteen',
    'fourteen',
    'fifteen',
    single(6) + 'teen',
    single(7) + 'teen',
    'eighteen',
    single(9) + 'teen',
  ]

  # (6..9).each {|num| words << (single(num) + 'teen')}

  words[number.to_s[-1].to_i]

end

def big_double(number)

  singles_digit = number.to_s[-1].to_i

  if number >= 90
    'ninety ' + single(singles_digit)
  elsif number >= 80
    'eighty ' + single(singles_digit)
  elsif number >= 70
    'seventy ' + single(singles_digit)
  elsif number >= 60
    'sixty ' + single(singles_digit)
  elsif number >= 50
    'fifty ' + single(singles_digit)
  elsif number >= 40
    'forty ' + single(singles_digit)
  elsif number >= 30
    'thirty ' + single(singles_digit)
  elsif number >= 20
    'twenty ' + single(singles_digit)
  end
end

def hundreds(number)
  single(number.to_s[-3].to_i) + ' hundred ' + to_word(number.to_s[-2..-1].to_i)
end

def thousands(number)
  to_word(number.to_s[-6..-4].to_i) + ' thousand ' + to_word(number.to_s[-3..-1].to_i)
end



# Tests

(-25..235).each {|num| p to_word(num)}
p to_word(123_412)

# Reflection
=begin
What concepts did you review in this challenge?

Control flow, loops, modular methods, recursion, converting data types, ranges

What is still confusing to you about Ruby?

Negative ranges are still a little tricky to me since they're not exactly intuitive.

What are you going to study to get more prepared for Phase 1?

Ranges, recursion, modular methods, control flow
=end
