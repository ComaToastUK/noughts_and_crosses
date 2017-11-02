require './lib/game'

RSpec.describe Game do

subject(:game) { described_class.new }

  describe '#initialize' do
    it 'initializes with an empty subject board' do
      randomCell = [0,1,2].sample
      expect(subject.board.grid[randomCell][randomCell].value).to eq('')
    end
  end

  describe '#cell_selector' do
    it 'can select the content from a particular cell' do
      subject.board.grid = [['foo','bar'],['sna','fu']]
      expect(subject.cell_selector(0,0)).to eq('foo')
      expect(subject.cell_selector(0,1)).to eq('bar')
      expect(subject.cell_selector(1,0)).to eq('sna')
      expect(subject.cell_selector(1,1)).to eq('fu')
    end
  end

  describe '#cell_value' do
    it 'updates the value of a given cell' do
      value = 'X'
      subject.cell_value(2,1,value)
      expect(subject.cell_selector(2,1).value).to eq('X')
      expect(subject.board.grid[2][1].value).to eq('X')
      expect(subject.board.grid[2][1]).to be_a(Cell)
    end
  end

  describe '#game_over' do
    it "returns :winner if winner? == true" do
      subject.stub(winner?) { true }
      expect(subject.game_over).to eq :winner
    end

    it "returns :draw if draw? == true" do
      subject.stub(draw?) { true }
      expect(subject.game_over).to eq :draw
    end

    it "returns false if draw? && winner? == false" do
      subject.stub(winner?) { false }
      subject.stub(draw?)   { false }
      expect(subject.game_over).to eq false
    end
  end
end
