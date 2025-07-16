require_relative '../../lib/string_adder'

RSpec.describe StringAdder do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(described_class.add("")).to eq(0)
    end

    it 'returns number for single digit string' do
      expect(described_class.add("1")).to eq(1)
    end
  end
end
