# Create 2 players: Computer and Player

# Assign a piece to each Player

class Player
  attr_reader :piece

  def initialize(piece)
    @piece = piece
  end

  # def winner?
  #   if @player == connected.connect_four
  #     true
  #   elsif @computer == connected.connect_four
  #     true
  #   else
  #     false
  #   end
  # end
  #
  # def computer
  #   require "pry"; binding.pry
  # end

end
