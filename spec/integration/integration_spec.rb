require './lib/board.rb'
require './lib/game.rb'
require './lib/player.rb'

describe '#integration' do
    it "puts player 1 at a position" do
        player = Player.new(1,'x')
        board = Board.new
        game = Game.new(board, player)
        expect(game.start_position).to eq(player.number)
    end


end