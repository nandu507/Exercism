class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = 0
    (0..@num).each { |n| sum += n }
    sum = (sum**2)
  end

  def sum_of_squares
    sum1 = 0
    (0..@num).each { |n| sum1 += (n**2) }
    sum1
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
module BookKeeping
  VERSION = 3
end
