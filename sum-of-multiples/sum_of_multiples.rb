class SumOfMultiples
  def initialize (*input)
    @input = input
  end
  def to(limit)
    number = 0
    add = []
    while number < limit
      @input.each do |num|
        if number % num == 0
          add << number
        end
      end
      number += 1
    end
    sum = 0
    add.uniq.each {|i| sum += i}
    sum
  end
end
