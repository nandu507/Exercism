 class Phrase
   def initialize(phrase)
     @phrases = phrase.downcase
   end

   def word_count
     @phrases.gsub!(/[^0-9A-Za-z']/,' ')

     @words = @phrases.split
     count = Hash.new 0
     @words.each do|word|
       count[word] += 1
     end
     count
   end
end
