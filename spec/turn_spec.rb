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

  xit "will return only letters A-G" do
    expect(@turn.computer_input).to eq("A").or eq("B").or eq("C").or eq("D").or eq("E").or eq("F").or eq("G")
  end

  xit "computer can place a piece 'O' in available spot" do # this test require hardcoded computer input in order to place a piece
    @turn.computer_piece("G") # if you would like to test, make all of line 278 runnable code, and # out lines 279 and 280
    # binding.pry
    expect(@board.board[:row1][6]).to eq "O"
  end

  it "can determine a players horizontal win" do
    @player_win = false
    @computer_win = false
    @turn.player_piece("C")
    @turn.player_piece("D")
    @turn.player_piece("E")
    @turn.player_piece("F")
    @turn.player_horizontal_win
    # binding.pry
    expect(@turn.player_horizontal_win).to eq true
  end

  xit "can determine a computer win" do # similar to our test before, in order to test CPU input we must hard code the input.
    @turn.computer_piece("A")# to do so you must un # the (input) on line 288
    @turn.computer_piece("B")# once doing this # out the computer_input method or it will be random
    @turn.computer_piece("C")# using the # then
    @turn.computer_piece("D")
    @turn.computer_horizontal_win
    expect(@turn.computer_horizontal_win).to eq true
  end
end
