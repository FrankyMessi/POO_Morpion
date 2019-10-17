class Board
  attr_accessor :hash_board

  def initialize
    @hash_board = { "a1" => " ", "b1" => " ", "c1" => " ", "a2" => " ", "b2" => " ", "c2" => " ", "a3" => " ", "b3" => " ", "c3" => " "}          
  end      
  
  def display_board
    puts "     A     B     C       "
    puts " -" * 10
    puts "1 |  #{@hash_board["a1"]}  |  #{@hash_board["b1"]}  |  #{@hash_board["c1"]}  |"
    puts " -" * 10
    puts "2 |  #{@hash_board["a2"]}  |  #{@hash_board["b2"]}  |  #{@hash_board["c2"]}  |"
    puts " -" * 10
    puts "3 |  #{@hash_board["a3"]}  |  #{@hash_board["b3"]}  |  #{@hash_board["c3"]}  |"
    puts " -" * 10
    
  end
end


