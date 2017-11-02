require './lib/cell.rb'

RSpec.describe Cell do
  describe '#initialize' do
    it "initializes with a value of '' " do
      cell = Cell.new
      expect(cell.value).to eq('')
    end

    it "can be initialized with a value of 'X' " do
      cell = Cell.new('X')
      expect(cell.value).to eq('X')
    end
 end
end
