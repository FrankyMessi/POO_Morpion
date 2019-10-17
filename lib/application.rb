require 'pry'
class Application 
  attr_accessor :decide, :round
  
  # This method allows to check if a new game should be initialized or not.
  def initialize 
    @decide = "Y"
  end
  
  #This method allows to keep the game going as long as nobody won or the players haven't reached nine turns yet.
  def ongoing_game
    @round = Game.new
    while @round.victory? == false && @round.draw? == false 
      @round.board_game.display_board
      @round.play(round.player1)
      break if @round.victory? != false || @round.draw? != false
      @round.board_game.display_board
      @round.play(round.player2)   
    end
  end
  
  #This method allows the game to display the winner's name and to propose the players if they want to play again.
  def ending_game
    @round.board_game.display_board
    @round.result
    puts " "
    puts "Do you want to play again?"
    puts "Please enter 'Y'(yes) or 'N'(no)"
    @decide = gets.chomp.to_s
    while @decide != "Y" && @decide != "N"
      puts "Please try again with a valid answer!"
      @decide = gets.chomp.to_s
    end
  end 
  
end   
  
  