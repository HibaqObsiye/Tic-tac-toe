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

    def make_board
        puts " #{@board[0]} |  #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} |  #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} |  #{@board[7]} | #{@board[8]} "
    end

    def start(player)
        puts "give me a number"
        number = gets.chomp.to_i
        if number == @board[number]
            @board.replace(@player.symbol)
        end
    end

    def turn

    end

    

end