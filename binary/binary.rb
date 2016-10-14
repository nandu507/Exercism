class Binary
  def initialize(binary_num)
    @binary_num = binary_num
    raise(ArgumentError) if (@binary_num) =~ /[2-9a-zA-z]/
  end

  def to_decimal
    temp_array = @binary_num.split ""
    count = 0
    decimal_num = 0
    until temp_array.empty?
      binary_decimal = temp_array.pop.to_i
      decimal_num += binary_decimal * 2**count
      count += 1
    end
    decimal_num
  end
end
module BookKeeping
  VERSION = 2
end
