# OO Basics: Student


# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
=begin

Input: Arrays of student data
Output: Average scores for each student
Steps:
Create a Class for Students
Create 5 student objects
  Assign a name for each student
  Assign 5 test scores for each student in an array
DEFINE a method to find average scores
  Go through a student's scores
    Add up each score
    Divide total by count
DEFINE a method for assigning a letter grade
  Flow control for different grade ranges and a letter grade
DEFINE a linear search method
  Go through each student in an array for first name
    IF they exist
      RETURN position of student in array
    ELSE
      RETURN -1
DEFINE a binary search method
  Find length of the array
    IF length is one AND equal to first name
      RETURN first name
    ELSE
      RETURN -1
  Divide length in half
  See if the first name is less than or greater than midpoint
    IF less than midpoint
      Binary search first half
    ELSE
      Binary search second half

=end
# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    #your code here
    @first_name = first_name
    @scores = scores
  end

  def average

    total = 0

    @scores.each {
      |score|
      total += score
    }

    total / @scores.size

  end

  def letter_grade

    if average >= 90
      'A'
    elsif average >= 80
      'B'
    elsif average >= 70
      'C'
    elsif average >= 60
      'D'
    else
      'F'
    end

  end

end

def linear_search(students, first)

  students.each_index {

    |i|

    if students[i].first_name == first
      return i
    else
      return -1
    end
  }

end

def binary_search(students, first)

  midpoint = students.size / 2

  if midpoint == 0
    if students[midpoint].first_name == first
      return midpoint
    else
      return -1
    end
  elsif first < students[midpoint].first_name
    return binary_search(students[0...midpoint], first)
  elsif first > students[midpoint].first_name
    return binary_search(students[midpoint+1..students.size], first)
  end

end


alex = Student.new("Alex", [100,100,100,0,100])
carmen = Student.new("Carmen", [100,100,100,100,100])
jon = Student.new("Jon", [80,85,90,95,87])
jim = Student.new("Jim", [54,77,98,23,12])
conway = Student.new("Conway", [98,23,56,20,100])

students = [alex, carmen, jon, jim, conway]

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

students.sort_by! {
  |student|
  student.first_name
}

p binary_search(students, "Alex") == 0
p binary_search(students, "NOT A STUDENT") == -1

# Reflection
