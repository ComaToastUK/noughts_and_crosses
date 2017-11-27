require './lib/core_extensions'

RSpec.describe Array do
  describe '#all_empty?' do
    it 'returns true if all elements of an array are the same and false' do
      expect(['', '', ''].all_empty?).to eq(true)
      expect([false, false, false].all_empty?).to eq(true)
      expect([nil, nil, nil].all_empty?).to eq(true)
    end

    it 'returns false if all elements of an array are not the same and false' do
      expect(['', nil, ''].all_empty?).to eq(false)
      expect([false, nil, ''].all_empty?).to eq(false)
      expect(['', nil, nil].all_empty?).to eq(false)
    end

    it 'returns false if any elements of an array are not false' do
      expect(['', '', 'Manbearpig'].all_empty?).to eq(false)
      expect(['something', nil, nil].all_empty?).to eq(false)
      expect(['', false, nil, 'Manbearpig'].all_empty?).to eq(false)
    end
  end

  describe '#any_empty?' do
    it 'returns true if any elements of the array are false' do
      expect(%w[A B C].any_empty?).to eq(false)
      expect(['', 'oh', 'hi'].any_empty?).to eq(true)
      expect(['', '', '', ''].any_empty?).to eq(true)
    end
  end

  describe '#none_empty' do
    it 'returns true if none of the elements of an array are false' do
      expect(%w[CAT DOG Manbearpig].none_empty?).to eq(true)
      expect(['', 'DOG', 'Manbearpig'].none_empty?).to eq(false)
      expect(['', '', 'Manbearpig'].none_empty?).to eq(false)
      expect(['', '', ''].none_empty?).to eq(false)
    end
  end
end
