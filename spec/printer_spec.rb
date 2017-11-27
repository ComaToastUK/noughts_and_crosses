require './lib/printer.rb'

RSpec.describe Printer do
  context '#turn_prompt' do
    it 'asks the player to enter a number' do
      printer = Printer.new
      current_player = 'Rick'
      expectation = 'Rick please enter a number from 1 to 9'
      expect(printer.turn_prompt(current_player)).to eq expectation
    end
  end

  describe "#winner_message" do
    it "prints '{current player name} won'" do
      printer = Printer.new
      current_player = "Rick"
      expect(printer.winner_message(current_player)).to eq "Rick wins!"
    end
  end

  describe "#draw_message" do
    it "returns'It's a draw'" do
      printer = Printer.new
      expect(printer.draw_message).to eq "It's a draw!"
    end
  end
end
