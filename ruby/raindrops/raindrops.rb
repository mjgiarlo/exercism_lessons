module Raindrops
  def self.convert(number)
    result = ''
    result << 'Pling' if number.factor?(3)
    result << 'Plang' if number.factor?(5)
    result << 'Plong' if number.factor?(7)
    return number.to_s if result.empty?
    result
  end
end

class Integer
  def factor?(divisor)
    self % divisor == 0
  end
end

module BookKeeping
  VERSION = 2
end
