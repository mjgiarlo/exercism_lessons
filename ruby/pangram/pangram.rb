module Pangram
  ALPHABET = ('a'..'z').to_a

  def self.is_pangram?(sentence)
    ALPHABET.all? do |letter|
      unique_characters(sentence).include?(letter)
    end
  end

  def self.unique_characters(string)
    string.downcase.chars.uniq
  end
end

module BookKeeping
  VERSION = 2
end
