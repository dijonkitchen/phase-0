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
var board = [
  ['_', '_', '_'],
  ['_', '_', '_'],
  ['_', '_', '_']
]

var playerO = {
  marker: 'O'
}

var playerX = {
  marker: 'X'
}

// function generateBoard (size) {
//   board.length = size
//
//   for (var row = 0; row < size; row++) {
//     for (var col = 0; col < size; col++) {
//       board[row].push('_')
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
  board[row][col] = player.marker
}

// Driver code
// board = generateBoard(3)
display()
mark(playerO, 1, 2)
display()
mark(playerX, 1, 1)
display()
// Refactored Code

// Reflection
/*

*/
