module Grains
  TOTAL_SQUARES = 64

  class << self
    def square(number)
      2 ** (number - 1)
    end

    def total
      (1..TOTAL_SQUARES).reduce { |sum, number| sum + square(number) }
    end
  end
end
