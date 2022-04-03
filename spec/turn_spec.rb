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

  it "can take player input" do
    input = @turn.player_input # we put this here because when we put input in 'before:each', it asks for player input twice instead of once

    expect(input).to eq("A")
  end

  it "can replace availble spot with player's piece " do
    input = @turn.player_input

    expect().to eq("A")
  end

  it "can check in all columns respond to player input" do
    input = @turn.player_input

    expect()
  end

end
