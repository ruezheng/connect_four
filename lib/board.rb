class Board
  attr_reader :column, :height, :place_holder, :board

  def initialize
    @height = 6
    @column = column
    @board = create_board
  end

  def create_board
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
    puts @board[:row6].join
    puts @board[:row5].join
    puts @board[:row4].join
    puts @board[:row3].join
    puts @board[:row2].join
    puts @board[:row1].join
  end

  def player_input(key, index)
    @set_board[key][index] = "X"
  end

  def computer_input(key, index)
    @set_board[key][index] = "O"
  end
end
