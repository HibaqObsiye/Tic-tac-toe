class Board
    attr_accessor :array
    def initialize
     @array = [1,2,3,4,5,6,7,8,9] 
    end   

    def make_board
        puts " #{@array[0]} |  #{@array[1]} | #{@array[2]} "
        puts "-----------"
        puts " #{@array[3]} |  #{@array[4]} | #{@array[5]} "
        puts "-----------"
        puts " #{@array[6]} |  #{@array[7]} | #{@array[8]} "
    end

   

end
board = Board.new
p board.make_board