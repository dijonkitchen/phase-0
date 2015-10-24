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
  if (board[row][col] === blank) {
    board[row][col] = player.marker
    console.log(player.name, 'put an', player.marker, 'on (', row, ',', col, ')')
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

// Driver code
// board = generateBoard(3)
do {
  display()
  mark(playerO, 1, 1)
  display()
  mark(playerX, 0, 0)
  display()
  mark(playerO, 1, 0)
  display()
  mark(playerX, 1, 2)
  display()
  mark(playerO, 0, 1)
  display()
  mark(playerX, 2, 2)
  display()
  mark(playerO, 2, 1)
} while (!(winner() !== '_'))

display()
console.log('Player', winner(), 'is the winner!')

// Refactored Code

// Reflection
/*

*/
