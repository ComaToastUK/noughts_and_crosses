require './lib/cell.rb'

RSpec.describe Cell do
  subject(:cell) { described_class.new }
  describe '#initialize' do
    it "initializes with a value of '' " do
      expect(cell.value).to eq('')
    end
 end
end
