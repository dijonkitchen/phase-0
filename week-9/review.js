/*
Translate 8.6 Ruby Review - oo-basics.rb to JS

Objective: Create an array of students and compute the average score for each
Pseudocode:
DEFINE Student prototype with first name and scores as inputs

  Assign the prototype variables to it's parameters

  DEFINE an average function to calculate the average score of a student
    FOR loop through the scores
      Create a total variable
      Add up the scores into total
      RETURN total divided by length

  DEFINE a letter grade function that figures out what letter grade
  that student has based on that person's average score
    IF / ELSE flow control for letter grades based on average
    RETURN letter grade if condition is met

Create 5 students with the Student prototype with different names and scores

Create an array of students that includes the 5 student objects above

Create a linear search function that looks through each element in the students array
to find a student's first name and output the position or -1 if not found
  FOR loop through the students
    IF student element's first name is the same as what you're searching for
      RETURN index location
  IF nobody by that name is found
    RETURN -1

Create a binary search function that looks through each element in the sorted students array
to find a student
  Input: array object, first name, low index, high index

  IF low is greater than high
    RETURN -1
  ELSE IF low = high
    IF first name found
      RETURN index location
    IF nobody by that name is found
      RETURN -1

  Set new variable midpoint equal to high minus low divided by 2 plus low

  IF first name is less than midpoint
    binary search with same low and midpoint as high
  ELSE IF first name is greater than midpoint
    binary search with midpoint as low and same high

*/

// Initial Solution

function Student (first, studScores) {
  this.firstName = first
  this.scores = studScores

  this.average = function () {
    var total = 0
    for (var index = 0; index < this.scores.length; index++) {
      total += this.scores[index]
    }
    return total / this.scores.length
  }

  this.letterGrade = function () {
    if (this.average() >= 90) {
      return 'A'
    } else if (this.average() >= 80) {
      return 'B'
    } else if (this.average() >= 70) {
      return 'C'
    } else if (this.average() >= 60) {
      return 'D'
    } else {
      return 'F'
    }
  }
}

var alex = new Student('Alex', [100, 100, 100, 0, 100])
var carmen = new Student('Carmen', [100, 100, 100, 100, 100])
var jon = new Student('Jon', [80, 85, 90, 95, 87])
var jim = new Student('Jim', [54, 77, 98, 23, 12])
var conway = new Student('Conway', [98, 23, 56, 20, 100])

var students = [
  alex,
  carmen,
  jon,
  jim,
  conway
]

function linearSearch (arrayOfObjects, queryOfFirstName) {
  for (var index = 0; index < arrayOfObjects.length; index++) {
    if (arrayOfObjects[index].firstName === queryOfFirstName) {
      return index
    } else {
      return -1
    }
  }
}

function binarySearch (arrayOfObjects, queryOfFirstName, lowIndex, highIndex) {
  if (lowIndex > highIndex) {
    return -1
  } if (lowIndex === highIndex) {
    // console.log('low high check', lowIndex === highIndex)
    if (arrayOfObjects[lowIndex].firstName === queryOfFirstName) {
      // console.log(lowIndex)
      return lowIndex
    } else {
      return -1
    }
  } else {
    var midpoint = Math.floor((highIndex - lowIndex) / 2 + lowIndex)
    // console.log(lowIndex, midpoint, highIndex)
    // console.log('found:', arrayOfObjects[midpoint].firstName)
    // console.log('query:', queryOfFirstName)
    // console.log(queryOfFirstName === arrayOfObjects[midpoint].firstName)
    if (queryOfFirstName === arrayOfObjects[midpoint].firstName) {
      // console.log(midpoint)
      return midpoint
    } else if (queryOfFirstName < arrayOfObjects[midpoint].firstName) {
      binarySearch(arrayOfObjects, queryOfFirstName, lowIndex, midpoint - 1)
    } else {
      binarySearch(arrayOfObjects, queryOfFirstName, midpoint + 1, highIndex)
    }
  }
}

// Refactored Solution

// DRIVER TESTS GO BELOW THIS LINE
// Initial Tests:

console.log(students[0].firstName === 'Alex')
console.log(students[0].scores.length === 5)
console.log(students[0].scores[0] === students[0].scores[4])
console.log(students[0].scores[3] === 0)

// Additional Tests 1:

console.log(students[0].average() === 80)
console.log(students[0].letterGrade() === 'B')

// Additional Tests 2:

console.log(linearSearch(students, 'Alex') === 0)
console.log(linearSearch(students, 'NOT A STUDENT') === -1)

// Binary search needs sorted array
students.sort(function (a, b) {
  if (a.firstName < b.firstName) {
    return -1
  } if (a.firstName > b.firstName) {
    return 1
  } else {
    return 0
  }
})

// Binary Search Tests

console.log('Alex', binarySearch(students, 'Alex', 0, students.length - 1) === 0)
console.log('Carmen', binarySearch(students, 'Carmen', 0, students.length - 1) === 1)
console.log('Conway', binarySearch(students, 'Conway', 0, students.length - 1) === 2)
console.log('Jim', binarySearch(students, 'Jim', 0, students.length - 1) === 3)
console.log('Jon', binarySearch(students, 'Jon', 0, students.length - 1) === 4)
console.log('NOT A STUDENT', binarySearch(students, 'NOT A STUDENT', 0, students.length - 1) === -1)

// Reflection
