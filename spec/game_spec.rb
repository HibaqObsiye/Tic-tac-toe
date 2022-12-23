require '../lib/board.rb'
require '../lib/player.rb'
require '../lib/game.rb'

describe Game do

    describe '#make_board' do
        it "makes a 3 * 3 grid" do
            board = Board.new
            expect(make_board)
        end
    end

end