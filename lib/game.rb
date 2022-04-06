class Game
  attr_reader :start_game, :game
  def initialize
    @game = game
  end

  def start_game
    start_value = gets.chomp
    board = Board.new()
    turn = Turn.new(board)
    if start_value == "p"
      puts board.print_board
      while true
        loop do
          turn.player_piece(gets.chomp.upcase)
          turn.player_horizontal_win
          turn.player_vertical_win
          sleep(1)
          turn.computer_piece
          turn.computer_horizontal_win
          turn.computer_vertical_win
          break
        end

        if turn.draw? == false
          puts "It's a draw! ༼ つ ◕_◕ ༽つ Enter 'ruby ./lib/connect_four.rb' to play again!"
          return
        elsif turn.player_horizontal_win == true
          puts "The game is over! You have beaten your computer overlords, good job!"
          return
        elsif turn.computer_horizontal_win == true
          puts "The game is over! You have lost to your computer overlords! Muhahaha!"
          return
        elsif turn.player_vertical_win == true
          puts "The game is over! You have beaten your computer overlords vertically, good job!"
          return
        elsif turn.computer_vertical_win == true
          puts "The game is over! You have lost to your computer overlords vertically, good job!"
          return
        end
      end
    elsif start_value == "q"
      puts "We wish you would have entered p, we are sad to see you go! Come back soon!"
      return

    elsif start_value
      puts "Please enter either p or q, please dont make us ask again..."
      start_game
    end
  end
end
