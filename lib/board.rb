class Board
  attr_reader :column, :height, :place_holder
  def initialize(column = 7, height = 6)
    @height = height
    @column = column
    @board = create_board
  end

  def create_board
    board = []
    @height.times do
      board << Array.new(@column)
      # board << Array.new(column{Array.new(height)})
    end
    board
  end

end
