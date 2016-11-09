class Complement
  def self.of_dna(string)
    dna_strand = string
    return '' if string =~ /[^\GCTA]/
    dna_strand.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end
end
module BookKeeping
  VERSION = 4
end
