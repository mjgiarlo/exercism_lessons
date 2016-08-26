class Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strand)
    mapped = strand.chars.map do |nucleotide|
      DNA_TO_RNA[nucleotide]
    end
    return '' if mapped.any?(&:nil?)
    mapped.join
  end
end

module BookKeeping
  VERSION = 4
end
