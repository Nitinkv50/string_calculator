class StringAdder
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..]
      numbers = numbers.gsub(delimiter, ',')
    end

    numbers.gsub("\n", ',').split(',').map(&:to_i).sum
  end
end
