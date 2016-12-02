class Nucleotide
    attr_accessor :input

    def self.from_dna(input)
      return raise(ArgumentError) if input =~ /[^ATCG]/ 
      Nucleotide.new(input)
    end

    def initialize(input)
      @dna_array = input.split("")
    end

    def count(dna_value)
      nucleotide = @dna_array.count(dna_value)
    end

    def histogram
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
