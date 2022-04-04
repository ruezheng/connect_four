require 'rspec'
require 'pry'
require './lib/turn'
require './lib/board'

RSpec.describe Turn do

  before :each do
    @board = Board.new
    @turn = Turn.new(@board)
  end

  it "exists" do
    expect(@turn).to be_an_instance_of Turn
  end

  it "can take player input" do
    @turn.player_piece("A")

    expect(@board.board[:row1][0]).to eq "X"
  end

  it "will return only letters A-G" do
    expect(@turn.computer_input).to eq("A").or eq("B").or eq("C").or eq("D").or eq("E").or eq("F").or eq("G")
  end

  it "computer can place a piece 'O' in available spot" do
    @turn.computer_piece("B")
    expect(@board.board[:row1][1]).to eq "O"
  end
end
