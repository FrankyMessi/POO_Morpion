require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'player'
require 'board'
require 'application'

#This method allows to launch the game, and to play as long as the players want, until they decide to stop.
def perform   
  application = Application.new
  while application.decide == "Y"
    application.ongoing_game
    application.ending_game      
  end
end  

perform