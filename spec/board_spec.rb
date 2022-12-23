require './lib/board.rb'

describe Board do
   it "contains 9 rows" do
    expect(subject.array).to contain_exactly("","","","","","","","","")
   end

end