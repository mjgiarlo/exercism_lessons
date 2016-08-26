class Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strand)
    strand.chars.map do |nucleotide|
      DNA_TO_RNA[nucleotide].tap do |complement|
        # short circuit as soon as mapping fails
        return '' if complement.nil?
      end
    end.join
  end
end

module BookKeeping
  VERSION = 4
end
