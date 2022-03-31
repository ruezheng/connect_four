class Board
  attr_reader :column, :height, :place_holder
  def initialize(column = 7, height = 6)
    @height = height
    @column = column
    @board = create_board
  end

  def create_board
    board = {
    :A => %w[. . . . . .],
    :B => %w[. . . . . .],
    :C => %w[. . . . . .],
    :D => %w[. . . . . .],
    :E => %w[. . . . . .],
    :F => %w[. . . . . .],
    :G => %w[. . . . . .]
    }
  end

  def print_board
    puts "Welcome to the game of connect 4!".delete('"')
    columns = ["ABCDEFG"].join
    # columns.keys.each do |column|
    puts columns.delete('"')
    6.times do
      puts %w[. . . . . . .].join
    end
    require "pry";binding.pry
  end
end
    # board = []
    # @height.times do
    #   board << Array.new(@column)
    #   # board << Array.new(column{Array.new(height)})
