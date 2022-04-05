class Turn
  attr_accessor :turn, :board

  def initialize(board)
    @board = board
  end

  def player_input
    return STDIN.gets.chomp
  end

  def start_game
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
    elsif start_value
      puts "Please enter either p or q, please dont make us ask again..."
      start_game

    elsif start_value == "q"
      puts "We wish you would enter p or q."
        return
    end
  end

  def invalid_choice
    # until  do
    #   5.times
      puts "We told you A-G. Try again!"
      player_piece(gets.chomp.upcase)
      return
    # end
    # puts "SERIOUSLY WE MEAN A-G"
  end

  def another_choice
      puts "Column is full. Please choose another column"
      player_piece(gets.chomp.upcase)
      return
  end

  def draw?
    @board.board[:row6].include?(".")
  end

  def player_piece(input)

    if input == "A"
      if @board.board[:row1][0] == "."
        @board.board[:row1][0] = "X"
        @board.print_board

      elsif @board.board[:row2][0] == "."
        @board.board[:row2][0] = "X"
        @board.print_board

      elsif @board.board[:row3][0] == "."
        @board.board[:row3][0] = "X"
        @board.print_board

      elsif @board.board[:row4][0] == "."
        @board.board[:row4][0] = "X"
        @board.print_board

      elsif @board.board[:row5][0] == "."
        @board.board[:row5][0] = "X"
        @board.print_board

      elsif @board.board[:row6][0] == "."
        @board.board[:row6][0] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "B"
      if @board.board[:row1][1] == "."
        @board.board[:row1][1] = "X"
        @board.print_board

      elsif @board.board[:row2][1] == "."
        @board.board[:row2][1] = "X"
        @board.print_board

      elsif @board.board[:row3][1] == "."
        @board.board[:row3][1] = "X"
        @board.print_board

      elsif @board.board[:row4][1] == "."
        @board.board[:row4][1] = "X"
        @board.print_board

      elsif @board.board[:row5][1] == "."
        @board.board[:row5][1] = "X"
        @board.print_board

      elsif @board.board[:row6][1] == "."
        @board.board[:row6][1] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "C"

      if @board.board[:row1][2] == "."
        @board.board[:row1][2] = "X"
        @board.print_board

      elsif @board.board[:row2][2] == "."
        @board.board[:row2][2] = "X"
        @board.print_board

      elsif @board.board[:row3][2] == "."
        @board.board[:row3][2] = "X"
        @board.print_board

      elsif @board.board[:row4][2] == "."
        @board.board[:row4][2] = "X"
        @board.print_board

      elsif @board.board[:row5][2] == "."
        @board.board[:row5][2] = "X"
        @board.print_board

      elsif @board.board[:row6][2] == "."
        @board.board[:row6][2] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "D"

      if @board.board[:row1][3] == "."
        @board.board[:row1][3] = "X"
        @board.print_board

      elsif @board.board[:row2][3] == "."
        @board.board[:row2][3] = "X"
        @board.print_board

      elsif @board.board[:row3][3] == "."
        @board.board[:row3][3] = "X"
        @board.print_board

      elsif @board.board[:row4][3] == "."
        @board.board[:row4][3] = "X"
        @board.print_board

      elsif @board.board[:row5][3] == "."
        @board.board[:row5][3] = "X"
        @board.print_board

      elsif @board.board[:row6][3] == "."
        @board.board[:row6][3] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "E"

      if @board.board[:row1][4] == "."
        @board.board[:row1][4] = 'X'
        @board.print_board

      elsif @board.board[:row2][4] == "."
        @board.board[:row2][4] = "X"
        @board.print_board

      elsif @board.board[:row3][4] == "."
        @board.board[:row3][4] = "X"
        @board.print_board

      elsif @board.board[:row4][4] == "."
        @board.board[:row4][4] = "X"
        @board.print_board

      elsif @board.board[:row5][4] == "."
        @board.board[:row5][4] = "X"
        @board.print_board

      elsif @board.board[:row6][4] == "."
        @board.board[:row6][4] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "F"

      if @board.board[:row1][5] == "."
        @board.board[:row1][5] = "X"
        @board.print_board

      elsif @board.board[:row2][5] == "."
        @board.board[:row2][5] = "X"
        @board.print_board

      elsif @board.board[:row3][5] == "."
        @board.board[:row3][5] = "X"
        @board.print_board

      elsif @board.board[:row4][5] == "."
        @board.board[:row4][5] = "X"
        @board.print_board

      elsif @board.board[:row5][5] == "."
        @board.board[:row5][5] = "X"
        @board.print_board

      elsif @board.board[:row6][5] == "."
        @board.board[:row6][5] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "G"

      if @board.board[:row1][6] == "."
        @board.board[:row1][6] = "X"
        @board.print_board

      elsif @board.board[:row2][6] == "."
        @board.board[:row2][6] = "X"
        @board.print_board

      elsif @board.board[:row3][6] == "."
        @board.board[:row3][6] = "X"
        @board.print_board

      elsif @board.board[:row4][6] == "."
        @board.board[:row4][6] = "X"
        @board.print_board

      elsif @board.board[:row5][6] == "."
        @board.board[:row5][6] = "X"
        @board.print_board

      elsif @board.board[:row6][6] == "."
        @board.board[:row6][6] = "X"
        @board.print_board

      else
        another_choice
      end

    else
      invalid_choice
    end
  end

  def computer_input
    @possible_input = (%w(A B C D E F G)).sample
  end

  def invalid_computer_choice
    # puts "redo"
    computer_piece
  end

  def computer_piece

    if computer_input == "A"
      if @board.board[:row1][0] == "."
        @board.board[:row1][0] = "O"
        @board.print_board
        return

      elsif @board.board[:row2][0] == "."
        @board.board[:row2][0] = "O"
        @board.print_board
        return

      elsif @board.board[:row3][0] == "."
        @board.board[:row3][0] = "O"
        @board.print_board
        return

      elsif @board.board[:row4][0] == "."
        @board.board[:row4][0] = "O"
        @board.print_board
        return

      elsif @board.board[:row5][0] == "."
        @board.board[:row5][0] = "O"
        @board.print_board
        return

      elsif @board.board[:row6][0] == "."
        @board.board[:row6][0] = "O"
        @board.print_board
        return

      else
        invalid_computer_choice
        return
      end

    elsif computer_input == "B"
      if @board.board[:row1][1] == "."
        @board.board[:row1][1] = "O"
        @board.print_board
        return

      elsif @board.board[:row2][1] == "."
        @board.board[:row2][1] = "O"
        @board.print_board
        return

      elsif @board.board[:row3][1] == "."
        @board.board[:row3][1] = "O"
        @board.print_board
        return

      elsif @board.board[:row4][1] == "."
        @board.board[:row4][1] = "O"
        @board.print_board
        return

      elsif @board.board[:row5][1] == "."
        @board.board[:row5][1] = "O"
        @board.print_board
        return

      elsif @board.board[:row6][1] == "."
        @board.board[:row6][1] = "O"
        @board.print_board
        return

      else
        invalid_computer_choice
        return
      end

    elsif computer_input == "C"

      if @board.board[:row1][2] == "."
        @board.board[:row1][2] = "O"
        @board.print_board
        return

      elsif @board.board[:row2][2] == "."
        @board.board[:row2][2] = "O"
        @board.print_board
        return

      elsif @board.board[:row3][2] == "."
        @board.board[:row3][2] = "O"
        @board.print_board
        return

      elsif @board.board[:row4][2] == "."
        @board.board[:row4][2] = "O"
        @board.print_board
        return

      elsif @board.board[:row5][2] == "."
        @board.board[:row5][2] = "O"
        @board.print_board
        return

      elsif @board.board[:row6][2] == "."
        @board.board[:row6][2] = "O"
        @board.print_board
        return

      else
        invalid_computer_choice
        return
      end

    elsif computer_input == "D"

      if @board.board[:row1][3] == "."
        @board.board[:row1][3] = "O"
        @board.print_board
        return

      elsif @board.board[:row2][3] == "."
        @board.board[:row2][3] = "O"
        @board.print_board
        return

      elsif @board.board[:row3][3] == "."
        @board.board[:row3][3] = "O"
        @board.print_board
        return

      elsif @board.board[:row4][3] == "."
        @board.board[:row4][3] = "O"
        @board.print_board
        return

      elsif @board.board[:row5][3] == "."
        @board.board[:row5][3] = "O"
        @board.print_board
        return

      elsif @board.board[:row6][3] == "."
        @board.board[:row6][3] = "O"
        @board.print_board
        return

      else
        invalid_computer_choice
        return
      end

    elsif computer_input == "E"

      if @board.board[:row1][4] == "."
        @board.board[:row1][4] = 'O'
        @board.print_board
        return

      elsif @board.board[:row2][4] == "."
        @board.board[:row2][4] = "O"
        @board.print_board
        return

      elsif @board.board[:row3][4] == "."
        @board.board[:row3][4] = "O"
        @board.print_board
        return

      elsif @board.board[:row4][4] == "."
        @board.board[:row4][4] = "O"
        @board.print_board
        return

      elsif @board.board[:row5][4] == "."
        @board.board[:row5][4] = "O"
        @board.print_board
        return

      elsif @board.board[:row6][4] == "."
        @board.board[:row6][4] = "O"
        @board.print_board
        return

      else
        invalid_computer_choice
        return
      end

    elsif computer_input == "F"

      if @board.board[:row1][5] == "."
        @board.board[:row1][5] = "O"
        @board.print_board
        return

      elsif @board.board[:row2][5] == "."
        @board.board[:row2][5] = "O"
        @board.print_board
        return

      elsif @board.board[:row3][5] == "."
        @board.board[:row3][5] = "O"
        @board.print_board
        return

      elsif @board.board[:row4][5] == "."
        @board.board[:row4][5] = "O"
        @board.print_board
        return

      elsif @board.board[:row5][5] == "."
        @board.board[:row5][5] = "O"
        @board.print_board
        return

      elsif @board.board[:row6][5] == "."
        @board.board[:row6][5] = "O"
        @board.print_board
        return

      else
        invalid_computer_choice
        return
      end

    elsif computer_input == "G"

      if @board.board[:row1][6] == "."
        @board.board[:row1][6] = "O"
        @board.print_board
        return

      elsif @board.board[:row2][6] == "."
        @board.board[:row2][6] = "O"
        @board.print_board
        return

      elsif @board.board[:row3][6] == "."
        @board.board[:row3][6] = "O"
        @board.print_board
        return

      elsif @board.board[:row4][6] == "."
        @board.board[:row4][6] = "O"
        @board.print_board
        return

      elsif @board.board[:row5][6] == "."
        @board.board[:row5][6] = "O"
        @board.print_board
        return

      elsif @board.board[:row6][6] == "."
        @board.board[:row6][6] = "O"
        @board.print_board
        return

      else
        invalid_computer_choice
        return
      end
    end
  end
end
