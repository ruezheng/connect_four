class Board
  attr_reader :place_holder, :board, :set_board


  def initialize
    @board = {
    row6: %w[. . . . . . .],
    row5: %w[. . . . . . .],
    row4: %w[. . . . . . .],
    row3: %w[. . . . . . .],
    row2: %w[. . . . . . .],
    row1: %w[. . . . . . .],
    }
  end

  def print_board
    puts "Please input letters A - G and press 'return' to place piece!".delete('"')
    columns = ["ABCDEFG"].join
    puts columns.delete('"')
    puts @board[:row6].join
    puts @board[:row5].join
    puts @board[:row4].join
    puts @board[:row3].join
    puts @board[:row2].join
    puts @board[:row1].join
  end

  def print_computer_board
    puts "-CPU TURN-"
    columns = ["ABCDEFG"].join
    puts columns.delete('"')
    puts @board[:row6].join
    puts @board[:row5].join
    puts @board[:row4].join
    puts @board[:row3].join
    puts @board[:row2].join
    puts @board[:row1].join
  end

  def player_input(key, index)
    @board[key][index] = "X"
  end

  def computer_input(key, index)
    @board[key][index] = "O"
  end
end
