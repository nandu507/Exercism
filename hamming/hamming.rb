class Hamming
  def self.compute(first, second)

    return raise ArgumentError if first.length != second.length
    first_dna = first.split("")
    second_dna =second.split("")
    dna_count = 0
    first_dna.each_index do |ind|
      dna_count += 1 if first_dna.values_at(ind) != second_dna.values_at(ind)
    end
    dna_count
  end
end
module BookKeeping
  VERSION = 3
end
