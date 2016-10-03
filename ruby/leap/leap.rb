module Year
  class << self
    def leap?(year)
      return true if divisor?(year, 400)
      return false if divisor?(year, 100)
      divisor?(year, 4)
    end

    private

    def divisor?(year, number)
      year % number == 0
    end
  end
end

module BookKeeping
  VERSION = 2
end
