require 'rspec'
require 'pry'
require './lib/turn'
require './lib/player'
require './lib/board'

RSpec.describe Turn do

  before :each do
    @turn = Turn.new()
    @set_board = Board.new
  end

  it "exists" do
    expect(@turn).to be_an_instance_of(Turn)
  end

  it "can take user input to change the board" do
    # binding.pry
    # @turn.take_turn.user_input("A")
    @user_input = "A"
    @turn.take_turn
    @turn.take_turn
    binding.pry
    expect(@set_board.board[:row1][0]).to eq("X")
    expect(@set_board.board[:row2][0]).to eq("X")

  end
end
