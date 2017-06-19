require_relative 'game'

describe Game do
  let(:game) {Game.new("hello")}


it "change word to hyphens" do
  expect(game.masked_word).to eq "-----"
end


it "uncovers the characters" do
  expect(game.character_reveal('o')).to eq ""
end

# it "stores an array"
# end

# it "reveals the letter" do
#   expect[]
# end

end
