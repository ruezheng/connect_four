# User input places a piece (X)
require './lib/board'
require 'pry'

class Turn
  attr_accessor :turn, :board

  def initialize(board)
    @board = board
  end

  def player_input
    return STDIN.gets.chomp.upcase
  end

  def place_piece
    if player_input == "A"

      if @board.board[:row1][0] == "."
        @board.board[:row1][0] = 'X'
        @board.print_board

      elsif @board.board[:row2][0] == "."
        @board.board[:row2][0] = 'X'
        @board.print_board

      elsif @board.board[:row3][0] == "."
        @board.board[:row3][0] = 'X'
        @board.print_board

      elsif @board.board[:row4][0] == "."
        @board.board[:row4][0] = 'X'
        @board.print_board

      elsif @board.board[:row5][0] == "."
        @board.board[:row5][0] = 'X'
        @board.print_board

      elsif @board.board[:row6][0] == "."
        @board.board[:row6][0] = 'X'
        @board.print_board

      else
        "Column is full"
      end
    end
  end
end
