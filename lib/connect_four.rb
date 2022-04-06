require 'pry'
require './lib/board'
require './lib/turn'
require './lib/game'

puts "Welcome to Connect Four! Enter p to play, then enter a letter A-G to place a piece. Enter q to quit.".delete("")
game = Game.new()
game.start_game
