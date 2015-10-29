// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Jon Chen.
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

/* INPUT: JavaScript object with votes
  OUTPUT: JavaScript object with assigned offices
  STEPS:
  In voteCount, within the President object, create a property called Bob and assign it a value of 3.
  In voteCount, within the Vice President object, create a property called Bob and assign it a value of 2.
  In voteCount, within the Secretary object, create a property called Bob and assign it a value of 2.
    In voteCount, within the Treasurer object, create a property called Bob and assign it a value of 4.
    In officers, for the President object, assign a value of 'Louise'.
    In officers, for the Vice President object, assign a value of 'Hermann'.
    In officers, for the Secretary object, assign a value of 'Fred'.
    In officers, for the Treasurer object, assign a value of 'Ivy'.
*/
// __________________________________________
// Initial Solution

// voteCount['president']['Bob'] = 3;
// voteCount['vicePresident']['Bob'] = 2;
// voteCount['secretary']['Bob'] = 2;
// voteCount['treasurer']['Bob'] = 4;

// officers['president'] = 'Louise';
// officers['vicePresident'] = 'Hermann';
// officers['secretary'] = 'Fred';
// officers['treasurer'] = 'Ivy';




// __________________________________________
// Refactored Solution

/*

STEPS:
Function 1:
  Define function countVote
  Create new empty holder object called record
  FOR each object (person) in Votes, iterate through the value (vote record)
    FOR voter.president
      create/modify a new property (person) in voteCount from the value
      increment this new property by one

  FOR each object (person) in Votes, iterate through the value (vote record)
    FOR voter.vicePresident
  create/modify a new property (person) in voteCount from the value
  increment this new property by one

  FOR each object (person) in Votes, iterate through the value (vote record)
    FOR voter.secretary
  create/modify a new property (person) in voteCount from the value
  increment this new property by one

  FOR each object (person) in Votes, iterate through the value (vote record)
    FOR voter.treasurer
  create/modify a new property (person) in voteCount from the value
  increment this new property by one


  return?


*/

// function countVote () {

// //   var record = {};

//   for (var voter in votes) {
//     if (voteCount['president'][votes[voter]['president']] === undefined) {
//       voteCount['president'][votes[voter]['president']] = 1;
//     } else {
//       voteCount['president'][votes[voter]['president']] += 1;
//     }
//   }

//   for (var voter in votes) {
//     if (voteCount['vicePresident'][votes[voter]['vicePresident']] === undefined) {
//       voteCount['vicePresident'][votes[voter]['vicePresident']] = 1;
//     } else {
//       voteCount['vicePresident'][votes[voter]['vicePresident']] += 1;
//     }
//   }

//   for (var voter in votes) {
//     if (voteCount['secretary'][votes[voter]['secretary']] === undefined) {
//       voteCount['secretary'][votes[voter]['secretary']] = 1;
//     } else {
//       voteCount['secretary'][votes[voter]['secretary']] += 1;
//     }
//   }

//   for (var voter in votes) {
//     if (voteCount['treasurer'][votes[voter]['treasurer']] === undefined) {
//       voteCount['treasurer'][votes[voter]['treasurer']] = 1;
//     } else {
//       voteCount['treasurer'][votes[voter]['treasurer']] += 1;
//     }
//   }

//   return voteCount;
// }

// /*
// Function 2:
// Pseudocode:
// Input: Take in an object of candidates and their votes
// Output: object with candidates with highest votes
// Steps:
// Make a new counter equal to first candidate
// FOR each position's candidate
//   IF candidate's votes is greater than counter's candidate
//     set counter equal to new candidate
// Set officers equal to highest voted candidate
// */

// function highestTally(object) {

//   var highest = 0;
//   var winner = undefined;


//   // President
//   for (var candidate in object['president']) {
//     if (object['president'][candidate] > highest) {
//       highest = object['president'][candidate];
//     }
//   }

//   for (var candidate in object['president']) {
//     if (object['president'][candidate] === highest) {
//       winner = candidate;
//     }
//   }

//   officers['president'] = winner;


//   // Vice President
//   highest = 0;
//   winner = undefined;

//   for (var candidate in object['vicePresident']) {
//     if (object['vicePresident'][candidate] > highest) {
//       highest = object['vicePresident'][candidate];
//     }
//   }

//   for (var candidate in object['vicePresident']) {
//     if (object['vicePresident'][candidate] === highest) {
//       winner = candidate;
//     }
//   }

//   officers['vicePresident'] = winner;


//   // Secretary
//   highest = 0;
//   winner = undefined;

//   for (var candidate in object['secretary']) {
//     if (object['secretary'][candidate] > highest) {
//       highest = object['secretary'][candidate];
//     }
//   }

//   for (var candidate in object['secretary']) {
//     if (object['secretary'][candidate] === highest) {
//       winner = candidate;
//     }
//   }

//   officers['secretary'] = winner;

//   // Treasurer
//   highest = 0;
//   winner = undefined;

//   for (var candidate in object['treasurer']) {
//     if (object['treasurer'][candidate] > highest) {
//       highest = object['treasurer'][candidate];
//     }
//   }

//   for (var candidate in object['treasurer']) {
//     if (object['treasurer'][candidate] === highest) {
//       winner = candidate;
//     }
//   }

//   officers['treasurer'] = winner;


//   return officers;

// }

// Refactor of refactor

function countVote () {

  for (var office in voteCount) {
    for (var voter in votes) {
      if (voteCount[office][votes[voter][office]] === undefined) {
        voteCount[office][votes[voter][office]] = 1;
      } else {
        voteCount[office][votes[voter][office]] += 1;
      }
    }
  }

  return voteCount;
}


function highestTally(object) {

  for (var office in officers) {
    var highest = 0;
    var winner = undefined;

    for (var candidate in object[office]) {
      if (object[office][candidate] > highest) {
        highest = object[office][candidate];
        winner = candidate;
      }
    }
    officers[office] = winner;
  }

  return officers;
}


// Driver code
console.log(countVote());
console.log(highestTally(voteCount));

// __________________________________________
// Reflection
/*

What did you learn about iterating over nested objects in JavaScript?

It was pretty tricky. You needed to go through a few for loops to get it right.

Were you able to find useful methods to help you with this?

No, we just used for loops.

What concepts were solidified in the process of working through this challenge?

Understanding objects, their properties, and if nested objects.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
