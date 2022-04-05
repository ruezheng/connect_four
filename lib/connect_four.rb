require 'pry'
require './lib/board'
require './lib/turn'

board = Board.new()

puts "Welcome to Connect Four! Enter p to play, then enter a letter A-G to place a piece. Enter q to quit.".delete("")

# start_value = gets.chomp
turn = Turn.new(board)


turn.start_game





  # game.has_won?
  # turn = Turn.new(board)
  # turn.computer_place_piece

# game = Game.new

# game.start

# press q to quit game
