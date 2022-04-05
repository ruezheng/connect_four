require 'pry'
require './lib/board'
require './lib/turn'

board = Board.new()
puts "Welcome to Connect Four!".delete("")
puts "Enter p to play. Enter q to quit".delete("")
puts ">".delete("")
start_value = gets.chomp
if start_value == "p"
  puts board.print_board
  while true
    turn = Turn.new(board)
    input = turn.player_input.upcase
    turn.player_piece(input)
    # check if they have won
    turn.computer_piece
    # check if they have won
    if turn.draw? == false
      puts "Game is a draw. "
      return
    end
  end
elsif start_value == p
  puts "We wish you would enter p or q."
    return
end







  # game.has_won?
  # turn = Turn.new(board)
  # turn.computer_place_piece

# game = Game.new

# game.start

# press q to quit game
