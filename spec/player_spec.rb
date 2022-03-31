require 'rspec'
require 'pry'
require './lib/player'

RSpec.describe Player do

  before :each do
    @player = Player.new('X')
    @computer = Player.new('O')
  end

  it "exists" do
    expect(@player).to be_an_instance_of(Player)
    expect(@computer).to be_an_instance_of(Player)
  end

  it "has a winner" do
    expect(@player.winner?).to eq(@true)
  end

  it "has a winner" do
    expect(@player.winner?).to eq(@false)
  end

end
