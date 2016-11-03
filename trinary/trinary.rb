class Trinary
  def initialize(trinary_num)
    @trinary_num = trinary_num
  end

  def to_decimal(multipy = 0)
    return 0 if @trinary_num =~ /[3-9a-zA-z]/
    temp_array = @trinary_num.split ''
    decimal_num = 0
    until temp_array.empty?
      trinary_decimal = temp_array.pop.to_i
      decimal_num += trinary_decimal * 3**multipy
      multipy = multipy.next
    end
    decimal_num
  end
end
  module BookKeeping
    VERSION = 1
  end
