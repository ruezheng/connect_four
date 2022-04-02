# Player places a piece (X)

class Turn
  attr_reader :board, :turn, :piece, :player

  def initialize
    @piece = piece
    @player = player
    @turn = turn
  end

  def takes_turn
    loop do
      @user_input = STDIN.gets.chomp.upcase

      if @user_input == "A"

        if @board[:row1][0] == "."
          @board[:row1][0] = 'X'
          @board.print_board
          break 
          #do we need these, or would the code quit here
        elsif @board[:row2][0] == "."
          @board[:row2][0] = 'X'
          @board.print_board
          break
        elsif @board[:row3][0] == "."
          @board[:row3][0] = 'X'
          @board.print_board
          break
        elsif @board[:row4][0] == "."
          @board[:row4][0] = 'X'
          @board.print_board
          break
        elsif @board[:row5][0] == "."
          @board[:row5][0] = 'X'
          @board.print_board
          break
        elsif @board[:row6][0] == "."
          @board[:row6][0] = 'X'
          @board.print_board
          break
        else
          "Column is full"
        end
      end
    end
  end

end
