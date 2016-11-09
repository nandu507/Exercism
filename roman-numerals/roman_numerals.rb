class Fixnum
  def to_roman
    roman_mapping = {
          1000 => "M",
          900 => "CM",
          500 => "D",
          400 => "CD",
          100 => "C",
          90 => "XC",
          50 => "L",
          40 => "XL",
          10 => "X",
          9 => "IX",
          5 => "V",
          4 => "IV",
          1 => "I"
      }

      number = self
     roman_mapping.keys.each_with_object("") do |divisor,roman|
       quotient, reminder = number.divmod(divisor)
       if quotient != 0
         roman << roman_mapping[divisor] * quotient
         number = reminder
       end
    end
  end
end
module BookKeeping
  VERSION = 2
end
