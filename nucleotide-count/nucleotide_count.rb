class Nucleotide
    attr_accessor :input
    def self.from_dna(input)
      dna_array = input.split('')
    end

    def self.count(dna_value)
      nucleotide = 0
      dna_array.each do |value|
        if value == dna_value
          nucleotide +=1
        end
      end
      nucleotide
    end

    def self.histogram
      nucleotides = {}
      no_of_nucleotide = 0
      dna = ["A","T","C","G"]
      dna.each do |nucle|
        no_of_nucleotide = count(nucle)
        nucleotides[nucle] = no_of_nucleotide
      end
     nucleotides
    end
end
