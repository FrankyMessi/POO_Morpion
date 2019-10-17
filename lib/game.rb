class Game
  attr_accessor :player1, :player2, :board_game
  #This method allows the game to create two human players and one board.

  def initialize
    @player1 = Player.new("X")
    @player2 = Player.new("O")
    @board_game = Board.new
    puts " "
    puts " "  
  end
  
  #This method allows a player to mark a boardcase with his symbol.
  def play(player)
    puts "#{player.name}, please choose a boardcase:"
    print "=>"
    move = gets.chomp.to_s
    while !(@board_game.hash_board.has_key?(move)) || @board_game.hash_board[move] != " "
      puts "You need to choose a valid & existing boardcase!"
      move = gets.chomp.to_s
    end
    @board_game.hash_board[move] = player.symbol
  end
    
  #This method allows to check if there's a tied game.
  def draw?
    !(@board_game.hash_board.value?(" "))
  end
  
  #This method allows to check if there's a winner, and who it is in case there's one.
  def victory?
    if @board_game.hash_board["a1"] == @player1.symbol && @board_game.hash_board["b1"] == @player1.symbol && @board_game.hash_board["c1"] == @player1.symbol ||
       @board_game.hash_board["a2"] == @player1.symbol && @board_game.hash_board["b2"] == @player1.symbol && @board_game.hash_board["c2"] == @player1.symbol ||
       @board_game.hash_board["a3"] == @player1.symbol && @board_game.hash_board["b3"] == @player1.symbol && @board_game.hash_board["c3"] == @player1.symbol ||
       @board_game.hash_board["a1"] == @player1.symbol && @board_game.hash_board["a2"] == @player1.symbol && @board_game.hash_board["a3"] == @player1.symbol ||
       @board_game.hash_board["b1"] == @player1.symbol && @board_game.hash_board["b2"] == @player1.symbol && @board_game.hash_board["b3"] == @player1.symbol ||
       @board_game.hash_board["c1"] == @player1.symbol && @board_game.hash_board["c2"] == @player1.symbol && @board_game.hash_board["c3"] == @player1.symbol ||
       @board_game.hash_board["a1"] == @player1.symbol && @board_game.hash_board["b2"] == @player1.symbol && @board_game.hash_board["c3"] == @player1.symbol ||
       @board_game.hash_board["c1"] == @player1.symbol && @board_game.hash_board["b2"] == @player1.symbol && @board_game.hash_board["a3"] == @player1.symbol 
       return @player1
    elsif @board_game.hash_board["a1"] == @player2.symbol && @board_game.hash_board["b1"] == @player2.symbol && @board_game.hash_board["c1"] == @player2.symbol ||
          @board_game.hash_board["a2"] == @player2.symbol && @board_game.hash_board["b2"] == @player2.symbol && @board_game.hash_board["c2"] == @player2.symbol ||
          @board_game.hash_board["a3"] == @player2.symbol && @board_game.hash_board["b3"] == @player2.symbol && @board_game.hash_board["c3"] == @player2.symbol ||
          @board_game.hash_board["a1"] == @player2.symbol && @board_game.hash_board["a2"] == @player2.symbol && @board_game.hash_board["a3"] == @player2.symbol ||
          @board_game.hash_board["b1"] == @player2.symbol && @board_game.hash_board["b2"] == @player2.symbol && @board_game.hash_board["b3"] == @player2.symbol ||
          @board_game.hash_board["c1"] == @player2.symbol && @board_game.hash_board["c2"] == @player2.symbol && @board_game.hash_board["c3"] == @player2.symbol ||
          @board_game.hash_board["a1"] == @player2.symbol && @board_game.hash_board["b2"] == @player2.symbol && @board_game.hash_board["c3"] == @player2.symbol ||
          @board_game.hash_board["c1"] == @player2.symbol && @board_game.hash_board["b2"] == @player2.symbol && @board_game.hash_board["a3"] == @player2.symbol 
          return @player2  
    else
      return false 
    end
  end

  #This method allows to display the result of the game, whatever it is.  
  def result
    if victory? == @player1 || victory? == @player2
      puts "Congratulations #{victory?.name}, you won!"
    else
      puts "Too bad! Tied game..."
    end
  end
  
end   

