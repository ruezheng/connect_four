require 'rspec'
require 'pry'
require './lib/turn'
require './lib/player'

RSpec.describe Turn do

  before :each do
    @turn = Turn.new()
  end

  it "exists" do
    expect(@turn).to be_an_instance_of(Turn)
  end

  it "can take user input to change the board" do
    @turn.takes_turn.user_input

    expect(@set_board.board[:row1[0]]).to eq("X")
  end
end
