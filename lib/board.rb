class Board
  attr_reader :place_holder, :board

  def initialize
    @board = set_board
  end

  def set_board
    @set_board = {
    :row6 => %w[. . . . . . .],
    :row5 => %w[. . . . . . .],
    :row4 => %w[. . . . . . .],
    :row3 => %w[. . . . . . .],
    :row2 => %w[. . . . . . .],
    :row1 => %w[. . . . . . .],
    }
  end

  def print_board
    puts "Please input letters A - G and press return to place piece!".delete('"')
    columns = ["ABCDEFG"].join
    puts columns.delete('"')
    puts @set_board[:row6].join
    puts @set_board[:row5].join
    puts @set_board[:row4].join
    puts @set_board[:row3].join
    puts @set_board[:row2].join
    puts @set_board[:row1].join
  end

  def player_input(key, index)
    @set_board[key][index] = "X"
  end

  def computer_input(key, index)
    @set_board[key][index] = "O"
  end
end
