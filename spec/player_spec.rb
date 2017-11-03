require './lib/player'

RSpec.describe Player do
  describe "#initialize" do

    it "initializes with a valid input hash" do
        input = { team: "X", name: "James" }
        expect { Player.new(input) }.to_not raise_error
    end
  end

  describe "#team" do
    it 'holds the value of the players team' do
      input = { team: "X", name: "James" }
      player = Player.new(input)
      expect(player.team).to eq "X"
    end
  end

  describe '#name' do
    it 'holds the value of the players name' do
      input = { team: "X", name: "James" }
      player = Player.new(input)
      expect(player.name).to eq "James"
    end
  end
end
