class Squares
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def square_of_sum
    return 0 if number.zero?
    number.downto(1).reduce(:+) ** 2
  end

  def sum_of_squares
    return 0 if number.zero?
    number.downto(1).map do |n|
      n ** 2
    end.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
