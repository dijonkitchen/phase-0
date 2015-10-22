// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Jon";
console.log(name);

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

prompt("What is your favorite food?");
alert("That's my favorite food too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Triangle



for (var i = 1; i <= 7; i++){
  var hashes = "";
  for (var j = 1; j <= i; j++){
    hashes += "#";
  }
  console.log(hashes);
}


// FizzBuzz

// Iterate from 1 through 100
// When the modulo of 15 is zero, print FizzBuzz
// When the modulo of 5 is zero, print Buzz
// When the modulo of 3 is zero, print Fizz
// Otherwise print the number

for (var i = 1; i <= 100; i++){
  if ((i % 5 === 0) && (i % 3 === 0))
    console.log("FizzBuzz");
  else if (i % 5 === 0)
    console.log("Buzz");
  else if (i % 3 === 0)
    console.log("Fizz");
  else
    console.log(i);
}


// Functions

// Complete the `minimum` exercise.

function min(num1, num2){
  if (num1 < num2)
    return num1;
  else
    return num2;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Jon",
  age: 29,
  favoriteFoods: ["Pomelo", "Burrata", "Ribeye"],
  quirk: "Warren Buffett is my hero"
};
