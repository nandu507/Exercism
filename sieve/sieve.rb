class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    prime = []
    number = (2..@num).to_a
    until number.empty?
      x = number[0]
      prime << x
      number.delete_if { |num| (num % x).zero? }
    end
    prime
  end
end
