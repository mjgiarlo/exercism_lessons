module Prime
  class << self
    def nth(index)
      raise ArgumentError, 'Must be >= 1' unless index.to_i.positive?
      @primes ||= []
      return @primes[index - 1] if @primes.size >= index
      increment_until_found(index)
    end

    def increment_until_found(index)
      candidate = @primes.last || 1
      loop do
        candidate += 1
        next unless prime?(candidate)
        @primes << candidate
        return candidate if @primes.size >= index
      end
    end

    def prime?(candidate)
      @primes.none? { |prime| candidate % prime == 0 }
    end
  end
end
