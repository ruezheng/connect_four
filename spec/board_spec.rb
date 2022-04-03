require 'pry'
require 'rspec'
require './lib/board.rb'

RSpec.describe Board do

  before :each do
    @board = Board.new()
  end

  it "exists" do
    expect(@board).to be_an_instance_of(Board)
  end

  it "can create a 7 column by 6 height board from a hash" do
    expect(@board.print_board).to eq(nil)
  end

  it "can place pieces on the board" do
    require "pry"; binding.pry
    @board.player_input(:row1, 0)
    @board.computer_input(:row1, 1)
    @board.player_input(:row2, 1)
    expect(@board.board[:row1][0]).to eq("X")
    expect(@board.board[:row1][1]).to eq("O")
    expect(@board.board[:row2][1]).to eq("X")
  end
end
