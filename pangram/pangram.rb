class Pangram
  def self.is_pangram?(string)
    not_used_letters = ('a'..'z').to_a - string.downcase.chars.to_a
    not_used_letters.empty?
  end
end
module BookKeeping
  VERSION = 2
end
