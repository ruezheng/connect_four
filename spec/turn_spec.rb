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
    expect(@turn).to be_an_instance_of(Turn)
  end

  it "can take user input" do
    input = @turn.player_input

    expect(input).to eq("X")
  end
end
