class Turn
  attr_accessor :turn, :board, :player_vertical_win

  def initialize(board)
    @board = board
    @player_vertical_win = false
  end

  def player_input
    return STDIN.gets.chomp
  end

  def player_horizontal_win
    @board.board.values.each do |inputs|
      switch = inputs.join("")
      if switch.include?("XXXX")
        return true
      end
    end
  end

  def player_vertical_win
    # require 'pry';binding.pry
    vertical_check_a = []
      vertical_check_a << @board.board.values[0][0]
      vertical_check_a << @board.board.values[1][0]
      vertical_check_a << @board.board.values[2][0]
      vertical_check_a << @board.board.values[3][0]
      vertical_check_a << @board.board.values[4][0]
      vertical_check_a << @board.board.values[5][0]
      string_vert_a = vertical_check_a.join("")
    vertical_check_b = []
      vertical_check_b << @board.board.values[0][1]
      vertical_check_b << @board.board.values[1][1]
      vertical_check_b << @board.board.values[2][1]
      vertical_check_b << @board.board.values[3][1]
      vertical_check_b << @board.board.values[4][1]
      vertical_check_b << @board.board.values[5][1]
      string_vert_b = vertical_check_b.join("")
    vertical_check_c = []
      vertical_check_c << @board.board.values[0][2]
      vertical_check_c << @board.board.values[1][2]
      vertical_check_c << @board.board.values[2][2]
      vertical_check_c << @board.board.values[3][2]
      vertical_check_c << @board.board.values[4][2]
      vertical_check_c << @board.board.values[5][2]
      string_vert_c = vertical_check_c.join("")
    vertical_check_d = []
      vertical_check_d << @board.board.values[0][3]
      vertical_check_d << @board.board.values[1][3]
      vertical_check_d << @board.board.values[2][3]
      vertical_check_d << @board.board.values[3][3]
      vertical_check_d << @board.board.values[4][3]
      vertical_check_d << @board.board.values[5][3]
      string_vert_d = vertical_check_d.join("")
    vertical_check_e = []
      vertical_check_e << @board.board.values[0][4]
      vertical_check_e << @board.board.values[1][4]
      vertical_check_e << @board.board.values[2][4]
      vertical_check_e << @board.board.values[3][4]
      vertical_check_e << @board.board.values[4][4]
      vertical_check_e << @board.board.values[5][4]
      string_vert_e = vertical_check_e.join("")
    vertical_check_f = []
      vertical_check_f << @board.board.values[0][5]
      vertical_check_f << @board.board.values[1][5]
      vertical_check_f << @board.board.values[2][5]
      vertical_check_f << @board.board.values[3][5]
      vertical_check_f << @board.board.values[4][5]
      vertical_check_f << @board.board.values[5][5]
      string_vert_f = vertical_check_f.join("")
    vertical_check_g = []
      vertical_check_g << @board.board.values[0][6]
      vertical_check_g << @board.board.values[1][6]
      vertical_check_g << @board.board.values[2][6]
      vertical_check_g << @board.board.values[3][6]
      vertical_check_g << @board.board.values[4][6]
      vertical_check_g << @board.board.values[5][6]
      string_vert_g = vertical_check_g.join("")
    if string_vert_a.include?("XXXX")
      true
    elsif string_vert_b.include?("XXXX")
      true
    elsif string_vert_c.include?("XXXX")
      true
    elsif string_vert_d.include?("XXXX")
      true
    elsif string_vert_e.include?("XXXX")
      true
    elsif string_vert_f.include?("XXXX")
      true
    elsif string_vert_g.include?("XXXX")
      true
    end
  end

  def computer_vertical_win
    # require 'pry';binding.pry
    vertical_check_a = []
      vertical_check_a << @board.board.values[0][0]
      vertical_check_a << @board.board.values[1][0]
      vertical_check_a << @board.board.values[2][0]
      vertical_check_a << @board.board.values[3][0]
      vertical_check_a << @board.board.values[4][0]
      vertical_check_a << @board.board.values[5][0]
      string_vert_a = vertical_check_a.join("")
    vertical_check_b = []
      vertical_check_b << @board.board.values[0][1]
      vertical_check_b << @board.board.values[1][1]
      vertical_check_b << @board.board.values[2][1]
      vertical_check_b << @board.board.values[3][1]
      vertical_check_b << @board.board.values[4][1]
      vertical_check_b << @board.board.values[5][1]
      string_vert_b = vertical_check_b.join("")
    vertical_check_c = []
      vertical_check_c << @board.board.values[0][2]
      vertical_check_c << @board.board.values[1][2]
      vertical_check_c << @board.board.values[2][2]
      vertical_check_c << @board.board.values[3][2]
      vertical_check_c << @board.board.values[4][2]
      vertical_check_c << @board.board.values[5][2]
      string_vert_c = vertical_check_c.join("")
    vertical_check_d = []
      vertical_check_d << @board.board.values[0][3]
      vertical_check_d << @board.board.values[1][3]
      vertical_check_d << @board.board.values[2][3]
      vertical_check_d << @board.board.values[3][3]
      vertical_check_d << @board.board.values[4][3]
      vertical_check_d << @board.board.values[5][3]
      string_vert_d = vertical_check_d.join("")
    vertical_check_e = []
      vertical_check_e << @board.board.values[0][4]
      vertical_check_e << @board.board.values[1][4]
      vertical_check_e << @board.board.values[2][4]
      vertical_check_e << @board.board.values[3][4]
      vertical_check_e << @board.board.values[4][4]
      vertical_check_e << @board.board.values[5][4]
      string_vert_e = vertical_check_e.join("")
    vertical_check_f = []
      vertical_check_f << @board.board.values[0][5]
      vertical_check_f << @board.board.values[1][5]
      vertical_check_f << @board.board.values[2][5]
      vertical_check_f << @board.board.values[3][5]
      vertical_check_f << @board.board.values[4][5]
      vertical_check_f << @board.board.values[5][5]
      string_vert_f = vertical_check_f.join("")
    vertical_check_g = []
      vertical_check_g << @board.board.values[0][6]
      vertical_check_g << @board.board.values[1][6]
      vertical_check_g << @board.board.values[2][6]
      vertical_check_g << @board.board.values[3][6]
      vertical_check_g << @board.board.values[4][6]
      vertical_check_g << @board.board.values[5][6]
      string_vert_g = vertical_check_g.join("")
    if string_vert_a.include?("OOOO")
      true
    elsif string_vert_b.include?("OOOO")
      true
    elsif string_vert_c.include?("OOOO")
      true
    elsif string_vert_d.include?("OOOO")
      true
    elsif string_vert_e.include?("OOOO")
      true
    elsif string_vert_f.include?("OOOO")
      true
    elsif string_vert_g.include?("OOOO")
      true
    end
  end


  def computer_horizontal_win
    @board.board.values.each do |inputs|
      switch = inputs.join("")
      if switch.include?("OOOO")
       return true
      end
    end
  end

  def invalid_choice
    puts "We told you A-G. Try again!"
    player_piece(gets.chomp.upcase)
  end

  def another_choice
    puts "Column is full. Please choose another column"
    player_piece(gets.chomp.upcase)
  end

  def draw?
    @board.board[:row6].include?(".")
  end

  def player_piece(input)

    if input == "A"
      if @board.board[:row1][0] == "."
        @board.board[:row1][0] = "X"
        @board.print_board

      elsif @board.board[:row2][0] == "."
        @board.board[:row2][0] = "X"
        @board.print_board

      elsif @board.board[:row3][0] == "."
        @board.board[:row3][0] = "X"
        @board.print_board

      elsif @board.board[:row4][0] == "."
        @board.board[:row4][0] = "X"
        @board.print_board

      elsif @board.board[:row5][0] == "."
        @board.board[:row5][0] = "X"
        @board.print_board

      elsif @board.board[:row6][0] == "."
        @board.board[:row6][0] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "B"
      if @board.board[:row1][1] == "."
        @board.board[:row1][1] = "X"
        @board.print_board

      elsif @board.board[:row2][1] == "."
        @board.board[:row2][1] = "X"
        @board.print_board

      elsif @board.board[:row3][1] == "."
        @board.board[:row3][1] = "X"
        @board.print_board

      elsif @board.board[:row4][1] == "."
        @board.board[:row4][1] = "X"
        @board.print_board

      elsif @board.board[:row5][1] == "."
        @board.board[:row5][1] = "X"
        @board.print_board

      elsif @board.board[:row6][1] == "."
        @board.board[:row6][1] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "C"

      if @board.board[:row1][2] == "."
        @board.board[:row1][2] = "X"
        @board.print_board

      elsif @board.board[:row2][2] == "."
        @board.board[:row2][2] = "X"
        @board.print_board

      elsif @board.board[:row3][2] == "."
        @board.board[:row3][2] = "X"
        @board.print_board

      elsif @board.board[:row4][2] == "."
        @board.board[:row4][2] = "X"
        @board.print_board

      elsif @board.board[:row5][2] == "."
        @board.board[:row5][2] = "X"
        @board.print_board

      elsif @board.board[:row6][2] == "."
        @board.board[:row6][2] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "D"

      if @board.board[:row1][3] == "."
        @board.board[:row1][3] = "X"
        @board.print_board

      elsif @board.board[:row2][3] == "."
        @board.board[:row2][3] = "X"
        @board.print_board

      elsif @board.board[:row3][3] == "."
        @board.board[:row3][3] = "X"
        @board.print_board

      elsif @board.board[:row4][3] == "."
        @board.board[:row4][3] = "X"
        @board.print_board

      elsif @board.board[:row5][3] == "."
        @board.board[:row5][3] = "X"
        @board.print_board

      elsif @board.board[:row6][3] == "."
        @board.board[:row6][3] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "E"

      if @board.board[:row1][4] == "."
        @board.board[:row1][4] = 'X'
        @board.print_board

      elsif @board.board[:row2][4] == "."
        @board.board[:row2][4] = "X"
        @board.print_board

      elsif @board.board[:row3][4] == "."
        @board.board[:row3][4] = "X"
        @board.print_board

      elsif @board.board[:row4][4] == "."
        @board.board[:row4][4] = "X"
        @board.print_board

      elsif @board.board[:row5][4] == "."
        @board.board[:row5][4] = "X"
        @board.print_board

      elsif @board.board[:row6][4] == "."
        @board.board[:row6][4] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "F"

      if @board.board[:row1][5] == "."
        @board.board[:row1][5] = "X"
        @board.print_board

      elsif @board.board[:row2][5] == "."
        @board.board[:row2][5] = "X"
        @board.print_board

      elsif @board.board[:row3][5] == "."
        @board.board[:row3][5] = "X"
        @board.print_board

      elsif @board.board[:row4][5] == "."
        @board.board[:row4][5] = "X"
        @board.print_board

      elsif @board.board[:row5][5] == "."
        @board.board[:row5][5] = "X"
        @board.print_board

      elsif @board.board[:row6][5] == "."
        @board.board[:row6][5] = "X"
        @board.print_board

      else
        another_choice
      end

    elsif input == "G"

      if @board.board[:row1][6] == "."
        @board.board[:row1][6] = "X"
        @board.print_board

      elsif @board.board[:row2][6] == "."
        @board.board[:row2][6] = "X"
        @board.print_board

      elsif @board.board[:row3][6] == "."
        @board.board[:row3][6] = "X"
        @board.print_board

      elsif @board.board[:row4][6] == "."
        @board.board[:row4][6] = "X"
        @board.print_board

      elsif @board.board[:row5][6] == "."
        @board.board[:row5][6] = "X"
        @board.print_board

      elsif @board.board[:row6][6] == "."
        @board.board[:row6][6] = "X"
        @board.print_board

      else
        another_choice
      end

    else
      invalid_choice
    end
  end

  def invalid_computer_choice
    computer_piece
  end

  def computer_piece#(input)
    @possible_input = (%w(A B C D E F G)).sample
    computer_input = @possible_input
    if computer_input == "A"
      if @board.board[:row1][0] == "."
        @board.board[:row1][0] = "O"
        @board.print_computer_board

      elsif @board.board[:row2][0] == "."
        @board.board[:row2][0] = "O"
        @board.print_computer_board

      elsif @board.board[:row3][0] == "."
        @board.board[:row3][0] = "O"
        @board.print_computer_board

      elsif @board.board[:row4][0] == "."
        @board.board[:row4][0] = "O"
        @board.print_computer_board

      elsif @board.board[:row5][0] == "."
        @board.board[:row5][0] = "O"
        @board.print_computer_board

      elsif @board.board[:row6][0] == "."
        @board.board[:row6][0] = "O"
        @board.print_computer_board

      else
        invalid_computer_choice
      end

    elsif computer_input == "B"
      if @board.board[:row1][1] == "."
        @board.board[:row1][1] = "O"
        @board.print_computer_board

      elsif @board.board[:row2][1] == "."
        @board.board[:row2][1] = "O"
        @board.print_computer_board

      elsif @board.board[:row3][1] == "."
        @board.board[:row3][1] = "O"
        @board.print_computer_board

      elsif @board.board[:row4][1] == "."
        @board.board[:row4][1] = "O"
        @board.print_computer_board

      elsif @board.board[:row5][1] == "."
        @board.board[:row5][1] = "O"
        @board.print_computer_board

      elsif @board.board[:row6][1] == "."
        @board.board[:row6][1] = "O"
        @board.print_computer_board

      else
        invalid_computer_choice
      end

    elsif computer_input == "C"

      if @board.board[:row1][2] == "."
        @board.board[:row1][2] = "O"
        @board.print_computer_board

      elsif @board.board[:row2][2] == "."
        @board.board[:row2][2] = "O"
        @board.print_computer_board

      elsif @board.board[:row3][2] == "."
        @board.board[:row3][2] = "O"
        @board.print_computer_board

      elsif @board.board[:row4][2] == "."
        @board.board[:row4][2] = "O"
        @board.print_computer_board

      elsif @board.board[:row5][2] == "."
        @board.board[:row5][2] = "O"
        @board.print_computer_board

      elsif @board.board[:row6][2] == "."
        @board.board[:row6][2] = "O"
        @board.print_computer_board

      else
        invalid_computer_choice
      end

    elsif computer_input == "D"

      if @board.board[:row1][3] == "."
        @board.board[:row1][3] = "O"
        @board.print_computer_board

      elsif @board.board[:row2][3] == "."
        @board.board[:row2][3] = "O"
        @board.print_computer_board

      elsif @board.board[:row3][3] == "."
        @board.board[:row3][3] = "O"
        @board.print_computer_board

      elsif @board.board[:row4][3] == "."
        @board.board[:row4][3] = "O"
        @board.print_computer_board

      elsif @board.board[:row5][3] == "."
        @board.board[:row5][3] = "O"
        @board.print_computer_board

      elsif @board.board[:row6][3] == "."
        @board.board[:row6][3] = "O"
        @board.print_computer_board

      else
        invalid_computer_choice
      end

    elsif computer_input == "E"

      if @board.board[:row1][4] == "."
        @board.board[:row1][4] = 'O'
        @board.print_computer_board

      elsif @board.board[:row2][4] == "."
        @board.board[:row2][4] = "O"
        @board.print_computer_board

      elsif @board.board[:row3][4] == "."
        @board.board[:row3][4] = "O"
        @board.print_computer_board

      elsif @board.board[:row4][4] == "."
        @board.board[:row4][4] = "O"
        @board.print_computer_board

      elsif @board.board[:row5][4] == "."
        @board.board[:row5][4] = "O"
        @board.print_computer_board

      elsif @board.board[:row6][4] == "."
        @board.board[:row6][4] = "O"
        @board.print_computer_board

      else
        invalid_computer_choice
      end

    elsif computer_input == "F"

      if @board.board[:row1][5] == "."
        @board.board[:row1][5] = "O"
        @board.print_computer_board

      elsif @board.board[:row2][5] == "."
        @board.board[:row2][5] = "O"
        @board.print_computer_board

      elsif @board.board[:row3][5] == "."
        @board.board[:row3][5] = "O"
        @board.print_computer_board

      elsif @board.board[:row4][5] == "."
        @board.board[:row4][5] = "O"
        @board.print_computer_board

      elsif @board.board[:row5][5] == "."
        @board.board[:row5][5] = "O"
        @board.print_computer_board

      elsif @board.board[:row6][5] == "."
        @board.board[:row6][5] = "O"
        @board.print_computer_board

      else
        invalid_computer_choice
      end

    elsif computer_input == "G"

      if @board.board[:row1][6] == "."
        @board.board[:row1][6] = "O"
        @board.print_computer_board

      elsif @board.board[:row2][6] == "."
        @board.board[:row2][6] = "O"
        @board.print_computer_board

      elsif @board.board[:row3][6] == "."
        @board.board[:row3][6] = "O"
        @board.print_computer_board

      elsif @board.board[:row4][6] == "."
        @board.board[:row4][6] = "O"
        @board.print_computer_board

      elsif @board.board[:row5][6] == "."
        @board.board[:row5][6] = "O"
        @board.print_computer_board

      elsif @board.board[:row6][6] == "."
        @board.board[:row6][6] = "O"
        @board.print_computer_board

      else
        invalid_computer_choice
      end
    end
  end
end
