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

  it "can take user input to r"
end
