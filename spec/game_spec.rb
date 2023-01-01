require './lib/board.rb'

require './lib/game.rb'

describe Game do

    describe '#user_input' do
        it 'returns 1 as input' do
            allow(Kernel).to receive(:gets).and_return(1)
            input = Kernel.gets

            expect(input).to eq(1)
        end
    end

    describe '#player_turn' do
        it "starts it off as 'x" do
            board = double(:board)
            game = Game.new(board)
            expect(game.player).to eq('X')
        end

        it 'changes when player turns' do
            board = double(:board)
            game = Game.new(board)
            game.player_turn
            expect(game.player).to eq('O')
        end

        it 'changes back to player x after player o turn' do
            board = double(:board)
            game = Game.new(board)
            game.player_turn
            game.player_turn
            expect(game.player).to eq('X')
        end
    end

end