require 'pry'
require 'rspec'
require './lib/board.rb'

RSpec.describe Board do
  it "exists" do
    board = Board.new()

    expect(board).to be_an_instance_of(Board)
  end

  it "can create a 7 column by 6 height board from a hash" do
    board = Board.new()

    expect(board.print_board).to eq(nil)
  end
end
