require './lib/board'

RSpec.describe Board do
  describe '#initialize' do
    it 'initializes with a 2d array of cells' do
      board = Board.new
      board.grid.each do |row|
      expect(row.size).to eq(3)
     end
    end
  end
  describe '#grid' do
    it 'is populated by Cells by default' do
      board = Board.new
      randomCell = [0,1,2].sample
      expect(board.grid[randomCell][randomCell]).to be_a(Cell)
    end
  end
end
