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
    @possible_input = (%w(A B C D E F G)).sample# method used within computer_piece for random choice
    computer_input = @possible_input # method used within computer_piece for random choice

    expect(computer_input).to eq("A").or eq("B").or eq("C").or eq("D").or eq("E").or eq("F").or eq("G")
  end

  xit "computer can place a piece 'O' in available spot" do
    @turn.computer_piece("G")

    expect(@board.board[:row1][6]).to eq "O"
  end

  it "can determine a players horizontal win" do
    @turn.player_piece("C")
    @turn.player_piece("D")
    @turn.player_piece("E")
    @turn.player_piece("F")
    @turn.player_horizontal_win
    # binding.pry
    expect(@turn.player_horizontal_win).to eq true
  end

  xit "can determine a computer horizontal win" do
    @turn.computer_piece("A")
    @turn.computer_piece("B")
    @turn.computer_piece("C")
    @turn.computer_piece("D")
    @turn.computer_horizontal_win

    expect(@turn.computer_horizontal_win).to eq true
  end

  it "can determine a players vertical win" do
    @turn.player_piece("C")
    @turn.player_piece("C")
    @turn.player_piece("C")
    @turn.player_piece("C")
    # require 'pry';binding.pry
    @turn.player_vertical_win
    # binding.pry
    expect(@turn.player_vertical_win).to eq true
  end

  xit "can determine a computer horizontal win" do # similar to our test before, in order to test CPU input we must hard code the input.
    @turn.computer_piece("A")# to do so you must un # the (input) on line 288
    @turn.computer_piece("B")# once doing this # out the computer_input method or it will be random
    @turn.computer_piece("C")# using the # then
    @turn.computer_piece("D")
    @turn.computer_horizontal_win
    expect(@turn.computer_vertical_win).to eq true
  end
end
