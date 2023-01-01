require './lib/board.rb'
require './lib/game.rb'
class Game
   PLAYER_ONE = 'X'
   PLAYER_TWO = 'O'
   attr_reader :player

    def initialize(board)
        @board = board
        @player = PLAYER_ONE 
        @win = false 
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
        @board.array[input - 1] = @player
        @board.make_board        
    end

    def move
        loop do
            break if self.win?
            input = user_input
            # player_turn
            # update_board(input) 

           pick_another_move if already_taken?(input)
              
            player_turn
            update_board(input) 
            
          
        end        
    end 

    private 

    def already_taken?(index)
        @board.array[index - 1] ==  PLAYER_ONE  || @board.array[index - 1] ==  PLAYER_TWO 
    end

    def pick_another_move
        puts "Pick another move"
        input = gets.chomp.to_i
         player_turn
        update_board(input) 
    end
    @array1 = ['X','X','X']
    @array2 = ['O', 'O', 'O']

    def win?
        WINNING_COMBINATIONS.each do |combination|
            if combination.all? { |index| @board.array[index] == @player }
                puts "Game over! Player #{@player} wins!"
                return true
            end
        end
        false
    end
    
   
end

board = Board.new
game = Game.new(board)
game.print_board
game.move





