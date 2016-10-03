module Grains
  TOTAL_SQUARES = 64

  class << self
    def square(number)
      2 ** (number - 1)
    end

    def total
      TOTAL_SQUARES.downto(1).reduce(0) do |sum, square_number|
        sum + square(square_number)
      end
    end
  end
end
