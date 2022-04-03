# User input places a piece (X)
require './lib/board'
require 'pry'

class Turn
  attr_reader :board, :turn, :set_board
  attr_accessor :board
  def initialize
    @turn = turn
    @board = Board.new
  end

  def take_turn
    loop do
      @user_input = "A"

      if @user_input == "A"

        if @set_board[:row1][0] == "."
          @set_board[:row1][0] = 'X'
          @set_board.print_board
        elsif @set_board[:row2][0] == "."
          @set_board[:row2][0] = 'X'
          @set_board.print_board
        elsif @set_board[:row3][0] == "."
          @set_board[:row3][0] = 'X'
          @set_board.print_board
        elsif @set_board[:row4][0] == "."
          @set_board[:row4][0] = 'X'
          @set_board.print_board
        elsif @set_board[:row5][0] == "."
          @set_board[:row5][0] = 'X'
          @set_board.print_board
        elsif @set_board[:row6][0] == "."
          @set_board[:row6][0] = 'X'
          @set_board.print_board
        else
          puts "Column A is full"
        end
      end
    end
  end
end
