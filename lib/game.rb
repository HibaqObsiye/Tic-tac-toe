require './lib/board.rb'
require './lib/game.rb'
class Game
   PLAYER_ONE = 'X'
   PLAYER_TWO = 'O'

   attr_reader :player

    def initialize(board)
        @board = board
        @player = PLAYER_ONE  
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

    def print_board
        return @board.make_board
    end

    def user_input 
        puts "pick a position"
        input = gets.chomp.to_i
        input
    end

    def player_turn
        if @player == PLAYER_ONE
            @player = PLAYER_TWO
        else
            @player = PLAYER_ONE
        end     
    end

    def update_board(input)
        @board.array[input] = @player
        @board.make_board        
    end

    # def move
    #     loop do
    #         input = user_input
    #         player_turn
           
    #         update_board(input) 
    #     end        
    # end 

   
end
# board = Board.new
# game = Game.new(board)
# game.print_board
# game.move




