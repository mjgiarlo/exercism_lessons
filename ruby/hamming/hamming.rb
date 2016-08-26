class Hamming
  def self.compute(strand1, strand2)
    @strand1 = strand1
    @strand2 = strand2
    validate!
    pairs.reduce(0) do |memo, pair|
      pair.uniq.length == 1 ? memo : memo + 1
    end
  end

  def self.pairs
    @strand1.split('').zip(@strand2.split(''))
  end

  def self.validate!
    raise ArgumentError if @strand1.length != @strand2.length
  end
end

module BookKeeping
  VERSION = 3
end
