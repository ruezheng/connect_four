require 'pry'
require './lib/board'
require './lib/turn'

puts "Welcome to Connect Four! You must connect 4 of your pieces (in any direction) to win the game. To play the game, enter a letter A-G and press 'Return' to place one of your pieces in a columm."

board = Board.new()
puts board.print_board
# turn = Turn.new(board)

while true
  turn = Turn.new(board)
  input = turn.player_input.upcase
  turn.player_piece(input)

  computer_input = turn.computer_input
  turn.computer_piece
end




  # game.has_won?
  # turn = Turn.new(board)
  # turn.computer_place_piece

# game = Game.new

# game.start

# press q to quit game
