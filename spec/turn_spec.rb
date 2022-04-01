require 'rspec'
require 'pry'
require './lib/game'

RSpec.describe Game do
  
  before :each do
    @game = @Game.new(player)
    @player = @Player.new('Fez')
    # @computer = @Computer.new(Computer)
  end

  it "exists" do
    expect(@game.player).to be_an_instance_of(@Game)
  end



end
