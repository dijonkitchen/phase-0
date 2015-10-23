// JavaScript Olympics

// Jon Chen and Eric Dell'Aringa paired on this challenge.

// This challenge took me [#] hours.

// Warm Up
// Checked in

// Bulk Up

// define a function gold_medal that takes an array

// array will hold objects (athletes)
// each athlete will have name, event and win assigned to the object

//print the name of the object, the event and if they won or lost

var mj = {
   name: 'Michael Jordan',
   event: 'NBA Finals'
   }

var wg = {
   name: 'Wayne Gretsky',
   event: 'NHL Finals'
   };

var athletes = [mj, wg];

function goldMedal () {
 for (var i = 0; i < athletes.length; i++){
   athletes[i].win = athletes[i].name + ' won ' + athletes[i].event;
   console.log(athletes[i].win);
 }
}

goldMedal();

// Jumble your words

/*
Pseudocode:
Define a function that accepts a string as an argument
Output: Reversed string
Steps:
Use built-in function to reverse string
Return the reversed string

*/
function reverser (string) {
 var output = string.split('').reverse().join('');


 console.log(output);
}

reverser("Jumble");
// 2,4,6,8
/*
Pseudocode:
Define a function that takes an array of numbers
Output: Will be the array with only even numbers
Steps:
Iterate through each index of the array
define an output array
LOOP length of original array
 IF
 If the number at index is even, push to output array
 END
END

Return output array



*/
function evener (array) {
 var evens = [];

 for (var i = 0; i < array.length; i++) {
   if (array[i] % 2 === 0) {
     evens.push(array[i]);
   }
 }

 return evens;
}

console.log(evener([1, 2, 3, 4, 5, 6, 7, 8]));

// "We built this city"

function Athlete (name, age, sport, quote) {
 this.name = name,
 this.age = age,
 this.sport = sport,
 this.quote = quote
};

// Driver code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

Javascript objects which are like hashes, constructors which are like classes, some methods are not the same as in Ruby.

What are constructor functions?

Constructor functions are like Class definitions.

How are constructors different from Ruby classes (in your research)?

The syntax is different and in constructors, properties can be a function, while attributes in Ruby Classes cannot. Ruby can also include methods in the Class, but they are separate.

*/
