=begin

# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  define a method
    generate a random letter in BINGO
    generate a random number between 1-100
    return both

# Check the called column for the number called.
  #fill in the outline here
  define method to check column
    If B, send to index 0 and look for number
    If I, send to index 1 and look for number
    If N, send to index 2 and look for number
    If G, send to index 3 and look for number
    If O, send to index 4 and look for number


# If the number is in the column, replace with an 'x'
  #fill in the outline here
  define method to replace number with x
    If method to check column returns true,
      replace number with x

# Display a column to the console
  #fill in the outline here
  define method to display column
    output column

# Display the board to the console (prettily)
  #fill in the outline here
  define method to display the board
    Iterate through each row
      Iterate through each column
        print each item
      put a new line

=end
# Initial Solution

# class BingoBoard
#
#   attr_accessor :letter, :number
#
#   def initialize(board)
#     @bingo_board = board
#   end
#
#   def call
#     case rand(0..4)
#
#     when 0
#       @letter = "B"
#     when 1
#       @letter = "I"
#     when 2
#       @letter = "N"
#     when 3
#       @letter = "G"
#     when 4
#       @letter = "O"
#     end
#
#     @number = rand(1..100)
#
#     return {@letter => @number}
#
#   end
#
#   def match?
#     case @letter
#
#     when "B"
#       for index in 0..4 do
#         @bingo_board[index][0] == @number
#       end
#     when "I"
#       for index in 0..4 do
#         @bingo_board[index][1] == @number
#       end
#     when "N"
#       for index in 0..4 do
#         @bingo_board[index][2] == @number
#       end
#     when "G"
#       for index in 0..4 do
#         @bingo_board[index][3] == @number
#       end
#     when "O"
#       for index in 0..4 do
#         @bingo_board[index][4] == @number
#       end
#     end
#   end
#
#   def check
#
#     case @letter
#
#     when "B"
#       for index in 0..4 do
#         if @bingo_board[index][0] == @number
#           @bingo_board[index][0] = 'x'
#         end
#       end
#     when "I"
#       for index in 0..4 do
#         if @bingo_board[index][1] == @number
#           @bingo_board[index][1] = 'x'
#         end
#       end
#     when "N"
#       for index in 0..4 do
#         if @bingo_board[index][2] == @number
#           @bingo_board[index][2] = 'x'
#         end
#       end
#     when "G"
#       for index in 0..4 do
#         if @bingo_board[index][3] == @number
#           @bingo_board[index][3] = 'x'
#         end
#       end
#     when "O"
#       for index in 0..4 do
#         if @bingo_board[index][4] == @number
#           @bingo_board[index][4] = 'x'
#         end
#       end
#     end
#
#   end
#
#   def print_row(index)
#     print @bingo_board[index]
#   end
#
#   def print_board
#     for index in 0..4
#       puts print_row(index)
#     end
#   end
#
# end

# Refactored Solution

class BingoBoard

  attr_accessor :word, :letter, :max

  def initialize(board,word,max)
    @bingo_board = board
    @word = word
    @max = max
  end

  def letter
    @letter = @word[rand(@word.size)]
  end

  def number
    @number = rand(@max)
  end

  def check

    for row in 0..4 do
      if @bingo_board[row][@word.index(@letter)] == @number
        @bingo_board[row][@word.index(@letter)] = 'X'
      end
    end

  end

  def print_row(row)
    @bingo_board[row].each {
      |num| [0,3-num.to_s.size].max.times {print " "}
      print num.to_s + " "
    }

  end

  def print_board
    for row in 0..4
      print_row(row)
      puts
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board,"BINGO",100)

puts "Old board"
new_game.word.chars.each {
  |num| [0,3-num.to_s.size].max.times {print " "}
  print num.to_s + " "
}
puts
new_game.print_board

300.times do
  new_game.letter
  new_game.number

  # new_game.call

# new_game.letter = "O"
# new_game.number = 52

# p new_game.match?

  # if new_game.match?
    new_game.check
  # end
end

puts
puts "New board"
new_game.word.chars.each {
  |num| [0,3-num.to_s.size].max.times {print " "}
  print num.to_s + " "
}
puts
new_game.print_board

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It was a bit harder since this challenge was more open-ended. Despite this, really trying to break down the problem into smaller pieces helped. I could focus on short pieces of logic rather than how all of it would work together. I think keeping the pseucode on top in it's own section is what works best for me. It's good to use it for the initial solution, but as you revise and refactor, I don't utilize it much anymore.

What are the benefits of using a class for this challenge?

With a class, you can create more than one instance of the object easily. So if you had a lot of people that wanted to play Bingo, you could create many boards.

How can you access coordinates in a nested array?

I used the double square bracket method of [row][column] to hone in on a specific cell.

What methods did you use to access and modify the array?

I used the attr_accessor, rand, for, and many other methods to access and modify individual numbers.

How did you determine what should be an instance variable versus a local variable?

I used mostly instance variables so that they could be used elsewhere within the class. Local variables were used for smaller calculations that were needed for iteration.

What do you feel is most improved in your refactored solution?

Overall, the iteration was vastly improved. It's much shorter, cleaner, and easier to understand. I tried to make the class as dynamic as possible so that it could take in different sized boards or a different range of numbers, but wasn't able to do it all. 

=end
