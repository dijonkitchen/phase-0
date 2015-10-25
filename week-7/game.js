/*
Design Basic Game Solo Challenge

This is a solo challenge

Your mission description:
Overall mission: Connect6 game as an extension of tic-tac-toe
Goals: Connect stones
Characters: PlayerO vs. PlayerX
Objects: PlayerO, PlayerX, Board
Functions: Place a stone, Check for connections

Pseudocode:
Create rows for board
Create columns for board to form array of arrays matrix
Create function to print Board
Create PlayerO and PlayerX
  Each includes the following properties:
    Move list with positions
Create function for a Player to make a move to change the Board
Print Board
Alternate turns for players until there are 3 O's or X's in a row, column, or diagonal.
Display winner

*/

// Initial Code
/*
var blank = '_'

var board = [
  [blank, blank, blank],
  [blank, blank, blank],
  [blank, blank, blank]
]

var playerO = {
  name: 'PlayerO',
  marker: 'O'
}

var playerX = {
  name: 'PlayerX',
  marker: 'X'
}

function display () {
  for (var row = 0; row < board.length; row++) {
    console.log(board[row])
  }
  console.log('\n')
}

function mark (player, row, col) {
  if (board[row][col] === blank) {
    board[row][col] = player.marker
    console.log(player.name, 'put an', player.marker, 'on (', row, ',', col, ')')
    player.moves++
  } else {
    console.log('Try again. That spot is marked already!')
  }
}

function winner () {
  for (var row = 0; row < board.length; row++) {
    if (board[row][0] === board[row][1] && board[row][1] === board[row][2]) {
      return board[row][0]
    }
  }

  for (var col = 0; col < board.length; col++) {
    if (board[0][col] === board[1][col] && board[1][col] === board[2][col]) {
      return board[0][col]
    }
  }

  if (board[0][0] === board[1][1] && board[1][1] === board[2][2]) {
    return board[0][0]
  } else if (board[0][2] === board[1][1] && board[1][1] === board[2][0]) {
    return board[0][2]
  }

  return blank
}

*/
// Refactored Code

var blank = '_'

var board = [
  [blank, blank, blank],
  [blank, blank, blank],
  [blank, blank, blank]
]

function Player (name, marker) {
  this.name = name
  this.marker = marker
  this.moves = 0
}

var player1 = new Player('PlayerO', 'O')
var player2 = new Player('PlayerX', 'X')

// function generateBoard (size) {
//   board.length = size
//
//   for (var row = 0; row < size; row++) {
//     for (var col = 0; col < size; col++) {
//       board[row].push(blank)
//     }
//   }
// }

function display () {
  for (var row = 0; row < board.length; row++) {
    console.log(board[row])
  }
  console.log('\n')
}

function mark (player, row, col) {
  if (board[row][col] === blank) {
    board[row][col] = player.marker
    console.log(player.name, 'put an', player.marker, 'on (', row, ',', col, ')')
    player.moves++
  } else {
    console.log('Try again. That spot is marked already!')
  }
}

function winner () {
  // check rows
  for (var row = 0; row < board.length; row++) {
    if (board[row][0] === board[row][1] && board[row][1] === board[row][2]) {
      return board[row][0]
    }
  }
  // check columns
  for (var col = 0; col < board.length; col++) {
    if (board[0][col] === board[1][col] && board[1][col] === board[2][col]) {
      return board[0][col]
    }
  }
  // check diagonals
  if (board[0][0] === board[1][1] && board[1][1] === board[2][2]) {
    return board[0][0]
  } else if (board[0][2] === board[1][1] && board[1][1] === board[2][0]) {
    return board[0][2]
  }

  return blank
}

// Driver code
// board = generateBoard(3)
do {
  display()
  mark(player1, 1, 1)
  display()
  mark(player2, 0, 0)
  display()
  mark(player1, 1, 0)
  display()
  mark(player2, 1, 2)
  display()
  mark(player1, 0, 1)
  display()
  mark(player2, 2, 2)
  display()
  mark(player1, 2, 1)
} while ((winner() !== player1.marker) && (winner() !== player2.marker))

display()

console.log(winner(), 'is the winner in', player1.moves, 'moves!')

// Reflection
/*

What was the most difficult part of this challenge?

It was tricky figuring out object properties to use and instances. I wanted to be able to generate any size board, but wasn't able to. I also wanted to allow user input, but after some researching, that seems very difficult in node.js. It was also quite difficult to check the items in a row in a short and simple way.

What did you learn about creating objects and functions that interact with one another?

As players made moves, I made the function also modify the move count for the player so I could see how many moves it took them to win in the end. I also constructed a function to create new instances of objects for players since I wanted to be able to add players later on.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

Aside from using a constructor function for player objects, I couldn't figure out how to refactor my game more.

How can you access and manipulate properties of objects?

In the form instanceObject.property, you can change the property or add one.

*/
