class Fixnum
  ROMAN_MAPPING = {
    1000..4000 => 'M',
    900..999   => 'CM',
    500..899   => 'D',
    400..499   => 'CD',
    100..399   => 'C',
    90..99     => 'XC',
    50..89     => 'L',
    40..49     => 'XL',
    10..39     => 'X',
    9..9       => 'IX',
    5..8       => 'V',
    4..4       => 'IV',
    1..3       => 'I'
  }

  def to_roman
    romanize_remainder(self)
  end

  private

    def romanize_remainder(value)
      return '' if value.zero?
      ''.tap do |romanized|
        ROMAN_MAPPING.each do |range, letter|
          next unless range.include?(value)
          romanized << letter << romanize_remainder(value - range.first)
        end
      end
    end
end

module BookKeeping
  VERSION = 2
end
