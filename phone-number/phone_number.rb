class PhoneNumber
  def initialize(input)
    @input = input
  end
  def number
    checkstring = @input
    checkstring.gsub!(/[()-.]/,'')
    phonenumber = checkstring.delete(' ')
    return '0000000000'if phonenumber =~ /[A-Za-z]/ || phonenumber.length < 10 || phonenumber.length >= 12
    return phonenumber if phonenumber.length == 10
    check_11_num
  end

  def area_code
    phonenumber = @input.byteslice(0, 3)
  end

  def to_s
    phonenumber = check_11_num
    phonenumber = @input if phonenumber == '0000000000'
    "(#{phonenumber.byteslice(0, 3)})"+" "+"#{phonenumber.byteslice(3, 3)}"+"-"+"#{phonenumber.byteslice(6, phonenumber.length)}"
  end

  def check_11_num
    phonenumber = @input
    if phonenumber.length == 11 && phonenumber.start_with?('1')
        x = phonenumber.byteslice(1, phonenumber.length)
      else
        x = '0000000000'
    end
      x
  end
end
