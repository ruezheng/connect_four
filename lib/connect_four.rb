require 'pry'
require './lib/board'
require './lib/turn'

puts "Welcome to Connect Four! You must connect 4 of your pieces (in any direction) to win the game. To play the game, enter a letter A-G and press 'Return' to place one of your pieces in a columm."

board = Board.new()
puts board.print_board
turn = Turn.new(board)

while true
  turn.place_piece
end

# game = Game.new
