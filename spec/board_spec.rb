require 'pry'
require 'rspec'
require './lib/board.rb'

RSpec.describe Board do

  before :each do
    @set_board = Board.new
  end

  it "exists" do
    expect(@set_board).to be_an_instance_of(Board)
  end

  it "can create a 7 column by 6 height board from a hash" do
    expect(@set_board.print_board).to eq(nil)
  end

  it "can place pieces on the board" do
    @set_board.player_input(:row1, 0)
    @set_board.computer_input(:row1, 1)
    @set_board.player_input(:row2, 1)

    expect(@set_board.board[:row1][0]).to eq("X")
    expect(@set_board.board[:row1][1]).to eq("O")
    expect(@set_board.board[:row2][1]).to eq("X")
    # binding.pry
  end
end
