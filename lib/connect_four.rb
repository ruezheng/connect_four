require 'pry'
require './lib/board'
require './lib/turn'

board = Board.new()

puts "Welcome to Connect Four! Enter p to play, then enter a letter A-G to place a piece. Enter q to quit.".delete("")

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
      puts "It's a draw! ༼ つ ◕_◕ ༽つ Enter 'ruby ./lib/connect_four.rb' to play again!"
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
