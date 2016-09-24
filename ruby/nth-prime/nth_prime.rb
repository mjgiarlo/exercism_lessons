module Prime
  class << self
    def nth(ordinal)
      raise ArgumentError, 'Must be >= 1' unless ordinal.to_i.positive?
      @primes ||= []
      return @primes[ordinal - 1] if @primes.size >= ordinal
      candidate = @primes.last || 1
      loop do
        candidate += 1
        @primes << candidate if prime?(candidate)
        return candidate if @primes.size >= ordinal
      end
    end

    def prime?(candidate)
      @primes.none? { |prime| candidate % prime == 0 }
    end
  end
end
