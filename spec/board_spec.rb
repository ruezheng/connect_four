require 'pry'
require 'rspec'
require './lib/board.rb'

RSpec.describe Board do
  it "exists" do
    board = Board.new()

    expect(board).to be_an_instance_of(Board)
  end

  it "can create a 7 column by 6 height board from a hash" do
    board = Board.new()

    expect(board.print_board).to eq(nil)
  end

  it "can place pieces in the board" do
    board = Board.new()
    # binding.pry
    board.player_input(:row1, 0)
    board.computer_input(:row1, 1)
    board.player_input(:row2, 1)
    expect(board.board[:row1][0]).to eq("X")
    expect(board.board[:row1][1]).to eq("O")
    expect(board.board[:row2][1]).to eq("X")
    binding.pry
  end
end
