/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100], //<- joseph
               [85, 80, 90, 90],  // <- Susan
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

/*
var gradebook = {
  Joseph : {
    testScores : scores[0]
  },
  Susan : {
    testScores : scores[1]
  },
  William : {
    testScores : scores[2]
  },
  Elizabeth : {
    testScores : scores[3]
  },
  addScore : function ( name , score ){
    for (var i = 0; i < scores.length; i++ ){
     if (name === students[i]){
       return scores[i].push(score);
      }
    }
  },
  getAverage : function (name) {
    for (var i = 0; i < students.length; i++){
      if (name === students[i]){
        return average(scores[i]);
      }
    }
  }
}


function average (array) {
  var total = 0
  for (var i = 0; i < array.length; i++) {
    total += array[i];
  }
  return total / array.length
}

console.log(average([4,10]))

// console.log(gradebook);

console.log(gradebook.Susan.testScores)
gradebook.addScore("Susan", 80)
console.log(gradebook.Susan.testScores)
*/



// __________________________________________
// Refactored Solution

// pseudocode for DRY approach to populate gradebook with student w/o typing manually.
// 1. We want to query the student array, in order to make every single student, a property of the object gradebook.
// 2. We want to assign to this property a value equal to an object, containing a testScore property and a value equal to scores of student.
// 3. In order to proceed, we need to create a constructor function that creates a new student.


var gradebook = {

  addScore : function ( name , score ){
    for (var i = 0; i < scores.length; i++ ){
     if (name === students[i]){
       return scores[i].push(score);
      }
    }
  },
  getAverage : function (name) {
    for (var i = 0; i < students.length; i++){
      if (name === students[i]){
        return average(scores[i]);
      }
    }
  }
}

function gradebookMaker(students, scores, newProperty){
  for(var i = 0; i < students.length; i++){
    gradebook[students[i]] = {}
    gradebook[students[i]][newProperty] = scores[i]
  }
}

// gradebookMaker have a side effect, when you call it, it will modify the gradebook object.
gradebookMaker(students, scores, "testScores")

// now we can return and see the result
console.log(gradebook)

function average (array) {
  var total = 0
  for (var i = 0; i < array.length; i++) {
    total += array[i];
  }
  return total / array.length
}

// console.log(average([4,10]))
// console.log(gradebook);
// console.log(gradebook.Susan.testScores)
// gradebook.addScore("Susan", 80)
// console.log(gradebook.Susan.testScores)

/*
// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

I learned that you can modify variables outside of the object and calculate
statistics on things inside the object.

// How did you iterate over nested arrays in JavaScript?

By separating out the object definition from changing the deep nested structure,
we we able to add new properties.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?

We didn't utilize any new methods, but we did split out a function to create
a gradebook so that adding students or scores would be more automated.

*/
// __________________________________________
// Test Code:  Do not alter code below this line.

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
