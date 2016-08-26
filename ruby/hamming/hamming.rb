class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length == strand2.length
    strand1.chars.zip(strand2.chars).count do |pair|
      pair.first != pair.last
    end
  end
end

module BookKeeping
  VERSION = 3
end
