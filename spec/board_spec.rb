require './lib/board'

RSpec.describe Board do
  subject(:board) { described_class.new }

  describe '#initialize' do
    it 'initializes with rows of 3' do
      subject = Board.new
      subject.grid.each do |row|
        expect(row.size).to eq(3)
      end
    end

    it 'initializes with 3 rows' do
      subject = Board.new
      expect(subject.grid.length).to eq(3)
    end

    it 'can be initialized with different configurations' do
      subject = Board.new(%w[foo bar])
      expect(subject.grid).to eq(%w[foo bar])
    end
  end

  describe '#grid' do
    it 'is populated by Cells by default' do
      subject = Board.new
      randomCell = [0, 1, 2].sample
      expect(subject.grid[randomCell][randomCell]).to be_a(Cell)
    end

    it 'has 9 elements' do
      subject = Board.new
      a = 0
      subject.grid.each do |row|
        a += row.length
      end
      expect(a).to eq(9)
    end
  end
end
