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
    @board = Board.new()
    player = Player.new()
    computer = Player.new()

    expect(player.human_player).to be_an_instance_of(Player)
    expect(player.computer).to be_an_instance_of(Player)
  end

end
