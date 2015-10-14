

# Class Warfare, Validate a Credit Card Number


# This challenge was done by Bruno Zatta and Jon Chen.
# I spent [#] hours on this challenge.

# Pseudocode
=begin
1 - define method
2 - take in a 16 digit number
3 - split the 16 digit number into an array of numbers
4 - for every other number double it
5 - split doubled numbers into individual numbers
6 - flatten array
7 - go through each number in the flattened array and it all up
8 - take total and check % 10 for true
=end

# Input: 16 digit number
# Output: true or false
# Steps:
=begin
1 - define method
2 - take in a 16 digit number
3 - split the 16 digit number into an array of numbers
4 - for every other number double it
5 - split doubled numbers into individual numbers
6 - flatten array
7 - go through each number in the flattened array and it all up
8 - take total and check % 10 for true
=end
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
  def initialize(cc_number)
    raise ArgumentError.new "Card must be 16 digits!" unless cc_number.to_s.size == 16
    @cc_number = cc_number
  end

  def check_card
    array = @cc_number.to_s.split("").reverse.map{|n| n.to_i}

    array.each_with_index do |num, index|
      if index % 2 != 0
        array[index] *= 2
      end
    end
    array.join.split("").map{|n| n.to_i}.reduce(:+) % 10 == 0
  end

end


new_card = CreditCard.new(4563960122001999)
p new_card.check_card

=end

# Refactored Solution


class CreditCard
  def initialize(cc_number)
    if cc_number.to_s.size != 16
      raise ArgumentError.new "Card must be 16 digits!"
    else
      @cc_number = cc_number
    end
  end

  def check_card
    array = @cc_number.to_s.chars.map(&:to_i).reverse

    array.each_with_index do |num, index|
      if index % 2 != 0
        array[index] *= 2
      end
    end
    array.join.chars.map{|n| n.to_i}.reduce(:+) % 10 == 0
  end

end



# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?



What new methods did you find to help you when you refactored?



What concepts or learnings were you able to solidify in this challenge?



=end
