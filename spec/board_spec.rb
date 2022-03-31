require 'pry'
require 'rspec'
require './board.rb'

RSpec.describe Board do
  it "exists" do
    board = Board.new()

    expect(board).to be_an_instance_of(Board)
  end

  it "can create a 7 column by 6 height board from an array" do
    board = Board.new()

    board.create_board
    require 'pry':binding.pry
    
    expect(board.create_board).to eq([[nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil]])
  end
end
