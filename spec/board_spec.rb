require './lib/board'

RSpec.describe Board do
  describe '#initialize' do

    it 'initializes with rows of 3' do
      board = Board.new
      board.grid.each do |row|
      expect(row.size).to eq(3)
     end
    end

    it 'initializes with 3 rows' do
      board = Board.new
      expect(board.grid.length).to eq(3)
    end

    it 'can be initialized with different configurations' do
      board = Board.new(['foo','bar'])
      expect(board.grid).to eq(['foo','bar'])
    end
  end

  describe '#grid' do
    it 'is populated by Cells by default' do
      board = Board.new
      randomCell = [0,1,2].sample
      expect(board.grid[randomCell][randomCell]).to be_a(Cell)
    end

    it 'has 9 elements' do
      board = Board.new
      a = 0
      board.grid.each do |row|
        a += row.length
      end
      expect(a).to eq(9)
    end
  end

  describe '#cell_selector' do
    it 'can select the content from a particular cell' do
      board = Board.new([['foo','bar'],['sna','fu']])
      expect(board.cell_selector(0,0)).to eq('foo')
      expect(board.cell_selector(1,0)).to eq('bar')
      expect(board.cell_selector(0,1)).to eq('sna')
      expect(board.cell_selector(1,1)).to eq('fu')
    end
  end

  
end
