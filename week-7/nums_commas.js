// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// Jon Chen and Eunice Do worked on this challenge.

// Pseudocode

/*
Input: An integer
Output: String with inserted commas
Logic:

Create a function that takes an integer as a parameter
Convert integer to a string
Reverse string
Slice string into thirds
Combine with commas
Reverse string again
Return string

*/

// Initial Solution

// function separateComma(number){
//   var separated = number.toString();
//   separated = separated.split("").reverse();

//   for (var i = 3; i < separated.length; i += 3){
//     separated[i] = separated[i].concat(",");
//   }

//   separated = separated.reverse().join("");

//   return separated;
// }

// Refactored Solution

function separateComma(number){
  var separated = number.toString().split("").reverse();

  for (var i = 3; i < separated.length; i += 4)
    separated.splice(i, 0, ",");

  return separated.reverse().join("");
}

// Your Own Tests (OPTIONAL)
console.log(separateComma(092834759283475));

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

It was a little harder since it was our first time really using JavaScript syntax. We approached the problem in a similar way to before.

What did you learn about iterating over arrays in JavaScript?

No, iterating over the arrays is the same. But since we were adding commas we needed to make sure we concatenated at the right index.

What was different about solving this problem in JavaScript?

There were more syntactical things to make sure we had correct. We also used Javascript methods instead of Ruby ones.

What built-in methods did you find to incorporate in your refactored solution?

splice was the new method that we used in the refactoring. 

*/
