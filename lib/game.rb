require './lib/board.rb'
require './lib/game.rb'
class Game
    def initialize(board, player)
        @board = board
        @player = player
        @turn = 0
    end

    WINNING_COMBINATIONS = [
        [0, 1, 2],
        [0, 3, 6],
        [0, 4, 8],
        [2, 5, 8],
        [6, 7, 8],
        [3, 4,5],
        [1, 4, 7]
    ]

    def boards
        return @board.make_board
    end

    def user_input
        puts "pick a position"
        @position = gets.chomp.to_i
    end

    def start_position
        user_input
    
        @board.array.map do |x|
           
          if @board.array.index(x) == @position
            @board.array[@position] = @player.symbol
          end
        end
        @board.make_board
  
    end  
end
player = Player.new(1,"x")
board = Board.new
game = Game.new(board, player)
p game.boards
game.start_position
