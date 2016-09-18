class Sieve
  MINIMUM = 2

  attr_reader :limit
  def initialize(limit)
    @limit = limit
  end

  def primes
    return [] if limit < MINIMUM
    range = (MINIMUM..limit).to_a
    marked_range = array_to_marked_hash(range)
    range.each do |potential_prime|
      (potential_prime**2..limit).step(potential_prime) do |multiple|
        marked_range[multiple] = false
      end
    end
    marked_range.select { |value, prime| prime }.keys
  end

  private

    # Take an array e.g. [2, 3, 4] & return a hash e.g. {2=>true, 3=>true, 4=> true}
    def array_to_marked_hash(array)
      array.zip([true] * array.size).to_h
    end
end
