class Board
  attr_reader :column, :height, :place_holder

  def initialize
    @height = 6
    @column = column
    @board = create_board
  end

  def create_board
    board = {
    :A => %w[. . . . . . .],
    :B => %w[. . . . . . .],
    :C => %w[. . . . . . .],
    :D => %w[. . . . . . .],
    :E => %w[. . . . . . .],
    :F => %w[. . . . . . .],
    }
  end

  def print_board
    puts "Welcome to the game of Connect 4!".delete('"')
    columns = ["ABCDEFG"].join
    puts columns.delete('"')
    puts @board[:A].join
    puts @board[:B].join
    puts @board[:C].join
    puts @board[:D].join
    puts @board[:E].join
    puts @board[:F].join
  end
end
