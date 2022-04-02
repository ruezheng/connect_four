require 'rspec'
require 'pry'
require './lib/board'
require './lib/player'

RSpec.describe Player do

  # before :each do
  #   @player = Player.new('X')
  #   @computer = Player.new('O')
  # end

  it "exists" do
    player = Player.new('X')
    computer = Player.new('O')

    expect(player).to be_an_instance_of Player
    expect(computer).to be_an_instance_of Player
  end

  it "has a piece assigned to each player" do
    player = Player.new('X')
    computer = Player.new('O')

    expect(player.piece).to eq 'X'
    expect(computer.piece).to eq 'O'
  end

  # xit "has a winner or is a draw" do
  #
  #
  #   expect(@player.winner?).to eq(@true)
  #
  #
  #   expect(@computer.winner?).to eq(@false)
  # end
  #
  # xit "" do
  #   expect(@player.winner?).to eq(@false)
  # end

end
