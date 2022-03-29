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
    # require 'pry':binding.pry
    board.create_board

    expect(board).to eq(board = [[nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil]])
  end
end
