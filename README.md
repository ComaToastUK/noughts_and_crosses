# Noughts and Crosses
## Because I flat out refuse to say 'Tic-Tac-Toe'

This is my attempt at the Noughts and Crosses challenge as part of makers academy's week 10 (tech test week). We've been tasked to come up with a solution which is object oriented and easily portable.

The rules of noughts and crosses are as follows:

There are two players in the game (X and O)
Players take turns until the game is over
A player can claim a field if it is not already taken
A turn ends when a player claims a field
A player wins if they claim all the fields in a row, column or diagonal
A game is over if a player wins
A game is over when all fields are taken

### The task

To build the business logic for the game and make it easy to implement a working game by combining the code with any user interface, whether it's web or command-line.

### Progress

I decided to revisit this today, it has 29 passing tests at present and needs only a little more work to plug in the command line ui and logic to run the game. The business logic is almost complete and I'm in the process of refactoring the game class some more as it's become a little heavier than I would like. The final class in progress is the Play class which will run the methods in a loop until a winner is declared.

### Technology
- Ruby 2.4.0
- Tested with RSpec
