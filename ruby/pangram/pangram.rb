module Pangram
  ALPHABET = ('a'..'z').to_a

  def self.is_pangram?(sentence)
    (ALPHABET - string.downcase.chars.uniq).empty?
  end
end

module BookKeeping
  VERSION = 2
end
