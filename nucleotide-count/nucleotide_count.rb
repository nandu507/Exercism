class Nucleotide
  class << self
    def from_dna(input)
      @dna_array = input.split('')
    end
    def count(dna_value)
      nucleotide = 0
      @dna_array.each do |value|
        if value == dna_value
          nucleotide +=1
        end
      end
      nucleotide
    end
    def histogram
      nucleotides = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
      

    end
  end
end
