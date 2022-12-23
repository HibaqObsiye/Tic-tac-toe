require './lib/player.rb'

describe Player do
        it "initializes with instance of player" do
            number = 1
            symbol = "x"
            expect(Player.new(number, symbol)).to be_an_instance_of(Player)
        end
        
        it "Player initializes with number 1 and symbol x" do
            player = Player.new(1,"x")
            
            expect(player.number).to eq(1)
            expect(player.symbol).to eq("x")
        end

end