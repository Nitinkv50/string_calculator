require_relative '../../lib/string_adder'

RSpec.describe StringAdder do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(described_class.add("")).to eq(0)
    end

    it 'returns number for single digit string' do
      expect(described_class.add("1")).to eq(1)
    end

    it 'returns the sum of two comma-separated numbers' do
      expect(described_class.add("1,5")).to eq(6)
    end

    it 'returns sum of multiple comma-separated numbers' do
      expect(described_class.add("1,2,3,4")).to eq(10)
    end

    it 'handles new lines between numbers' do
      expect(described_class.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiter defined in the format //;\n1;2' do
      expect(described_class.add("//;\n1;2")).to eq(3)
    end

    it 'raises an exception for negative numbers' do
      expect {described_class.add("1,-2,3,-4")
      }.to raise_error("negative numbers not allowed -2,-4")
    end
  end
end
