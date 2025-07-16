require_relative '../../lib/string_adder'

RSpec.describe StringAdder do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(described_class.add("")).to eq(0)
    end
  end
end