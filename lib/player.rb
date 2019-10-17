class Player
  attr_accessor :name, :symbol
  
  #This method allows to ask the player's name at its initialization, and to define its symbol.
  def initialize(symbol)
      puts "    #CHOOSE A NICKNAME:"
      print "     => "
      @name = gets.chomp.to_s
      @symbol = symbol
      puts "#{@name} has the symbol '#{@symbol}'."
      puts " "
  end

end

