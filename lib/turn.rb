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
        puts "Column is full. Please choose another column."
      end
    end

    if player_input == "B"

      if @board.board[:row1][1] == "."
        @board.board[:row1][1] = 'X'
        @board.print_board

      elsif @board.board[:row2][1] == "."
        @board.board[:row2][1] = 'X'
        @board.print_board

      elsif @board.board[:row3][1] == "."
        @board.board[:row3][1] = 'X'
        @board.print_board

      elsif @board.board[:row4][1] == "."
        @board.board[:row4][1] = 'X'
        @board.print_board

      elsif @board.board[:row5][1] == "."
        @board.board[:row5][1] = 'X'
        @board.print_board

      elsif @board.board[:row6][1] == "."
        @board.board[:row6][1] = 'X'
        @board.print_board

      else
        puts "Column is full. Please choose another column."
      end
    end

    if player_input == "C"

      if @board.board[:row1][2] == "."
        @board.board[:row1][2] = 'X'
        @board.print_board

      elsif @board.board[:row2][2] == "."
        @board.board[:row2][2] = 'X'
        @board.print_board

      elsif @board.board[:row3][2] == "."
        @board.board[:row3][2] = 'X'
        @board.print_board

      elsif @board.board[:row4][2] == "."
        @board.board[:row4][2] = 'X'
        @board.print_board

      elsif @board.board[:row5][2] == "."
        @board.board[:row5][2] = 'X'
        @board.print_board

      elsif @board.board[:row6][2] == "."
        @board.board[:row6][2] = 'X'
        @board.print_board

      else
        puts "Column is full. Please choose another column."
      end
    end

    if player_input == "D"

      if @board.board[:row1][3] == "."
        @board.board[:row1][3] = 'X'
        @board.print_board

      elsif @board.board[:row2][3] == "."
        @board.board[:row2][3] = 'X'
        @board.print_board

      elsif @board.board[:row3][3] == "."
        @board.board[:row3][3] = 'X'
        @board.print_board

      elsif @board.board[:row4][3] == "."
        @board.board[:row4][3] = 'X'
        @board.print_board

      elsif @board.board[:row5][3] == "."
        @board.board[:row5][3] = 'X'
        @board.print_board

      elsif @board.board[:row6][3] == "."
        @board.board[:row6][3] = 'X'
        @board.print_board

      else
        puts "Column is full. Please choose another column."
      end
    end

    if player_input == "E"

      if @board.board[:row1][4] == "."
        @board.board[:row1][4] = 'X'
        @board.print_board

      elsif @board.board[:row2][4] == "."
        @board.board[:row2][4] = 'X'
        @board.print_board

      elsif @board.board[:row3][4] == "."
        @board.board[:row3][4] = 'X'
        @board.print_board

      elsif @board.board[:row4][4] == "."
        @board.board[:row4][4] = 'X'
        @board.print_board

      elsif @board.board[:row5][4] == "."
        @board.board[:row5][4] = 'X'
        @board.print_board

      elsif @board.board[:row6][4] == "."
        @board.board[:row6][4] = 'X'
        @board.print_board

      else
        puts "Column is full. Please choose another column."
      end
    end

    if player_input == "F"

      if @board.board[:row1][5] == "."
        @board.board[:row1][5] = 'X'
        @board.print_board

      elsif @board.board[:row2][5] == "."
        @board.board[:row2][5] = 'X'
        @board.print_board

      elsif @board.board[:row3][5] == "."
        @board.board[:row3][5] = 'X'
        @board.print_board

      elsif @board.board[:row4][5] == "."
        @board.board[:row4][5] = 'X'
        @board.print_board

      elsif @board.board[:row5][5] == "."
        @board.board[:row5][3] = 'X'
        @board.print_board

      elsif @board.board[:row6][5] == "."
        @board.board[:row6][5] = 'X'
        @board.print_board

      else
        puts "Column is full. Please choose another column."
      end
    end

    if player_input == "G"

      if @board.board[:row1][6] == "."
        @board.board[:row1][6] = 'X'
        @board.print_board

      elsif @board.board[:row2][6] == "."
        @board.board[:row2][6] = 'X'
        @board.print_board

      elsif @board.board[:row3][6] == "."
        @board.board[:row3][6] = 'X'
        @board.print_board

      elsif @board.board[:row4][6] == "."
        @board.board[:row4][6] = 'X'
        @board.print_board

      elsif @board.board[:row5][6] == "."
        @board.board[:row5][6] = 'X'
        @board.print_board

      elsif @board.board[:row6][6] == "."
        @board.board[:row6][6] = 'X'
        @board.print_board

      else
        puts "Column is full. Please choose another column."
      end
    end
  end
end
