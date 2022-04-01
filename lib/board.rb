class Board
  attr_reader :column, :height, :place_holder
  def initialize(column = 7, height = 6)
    @height = height
    @column = column
    @board = create_board
  end

  def create_board
    @board = {
    :A => %w[. . . . . . .],
    :B => %w[. . . . . . .],
    :C => %w[. . . . . . .],
    :D => %w[. . . . . . .],
    :E => %w[. . . . . . .],
    :F => %w[. . . . . . .],
    # :G => %w[. . . . . .]
    }
  end

  def print_board
    # columns = ["ABCDEFG"].join
    # columns.each do |column|
    #   puts columns.delete('"')
    a = @board.map do |key, value|
     puts "#{key}, #{value}"
    end
  end
end
# board = Board.new()
# puts board.print_board

    # require "pry";binding.pry


    # board = []
    # @height.times do
    #   board << Array.new(@column)
    #   # board << Array.new(column{Array.new(height)})

    # puts "Welcome to the game of connect 4!".delete('"')
    # columns = ["ABCDEFG"].join
    # puts columns.delete('"')
    # 6.times do
    #   p %w[. . . . . . .].join
    # end
    # require 'pry':binding.pry
    # return

    # final_board= []
    # @board.values.transpose.each do |array|
    #
    #
    # require 'pry':binding.pry
