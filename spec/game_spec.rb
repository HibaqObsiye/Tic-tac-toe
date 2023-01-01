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

    describe '#update_board' do
        context "Player X picks a square" do

          it "shows position X on the board" do
            board = double(:board)
            allow(Kernel).to receive(:gets).and_return(1)
            input = Kernel.gets
        
            expect(board).to receive(:array).and_return(["", "", "", "", "", "", "", "", ""])
            expect(board).to receive(:make_board).and_return(["", "", "", "", "", "", "", "", ""])
            game = Game.new(board)
            game.update_board(input)
          end
      
          it "updates the board with position X" do  
            board = double(:board)

            expect(board).to receive(:array).and_return(['X', "", "", "", "", "", "", "", ""])
            expect(board).to receive(:make_board).and_return(['X', "", "", "", "", "", "", "", ""])
           
            game = Game.new(board)
            game.update_board(1)
          end
        end
    end

    describe "#move " do
        it "player wins " do
            board = double(:board)
            game = Game.new(board)
        
            expect(game).to receive(:win?).and_return(true)

            expect(game.move).to eq(nil)
        end

        context "player draws" do
            xit "exits the loop and ends the game" do
             
              board = double(:board)
              game = Game.new(board)
             
              expect(board).to receive(:array).at_least(:once).and_return(["X", "O", "X", "O", "X", "O", "X", "O", "X"])
          
              expect(game).to receive(:draw?).and_return(true)
            
              expect(game.move).to eq(nil)
            end
          end
    end
end