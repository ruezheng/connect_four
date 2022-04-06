class Game
  attr_reader :start_game, :game
  def initialize
  end

  def start_game
    start_value = gets.chomp
    board = Board.new()
    turn = Turn.new(board)
    if start_value == "p"
      # input = turn.player_input.upcase
      puts board.print_board
      while true
        loop do
          turn.player_piece(gets.chomp.upcase)
          sleep(1)
          turn.computer_piece
          break
        end

        if turn.draw? == false
          puts "It's a draw! ༼ つ ◕_◕ ༽つ Enter 'ruby ./lib/connect_four.rb' to play again!"
          return
        end
      end
    elsif start_value
      puts "Please enter either p or q, please dont make us ask again..."
      start_game

    elsif start_value == "q"
      puts "We wish you would enter p or q."
        return
    end
  end
end
