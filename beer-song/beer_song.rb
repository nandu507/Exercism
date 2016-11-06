class BeerSong
  def initialize(number1 = 0,number2 = 0)
    @number1 = number1
    @number2 = number2
  end

  def version
    limit = 0
    if @number2 > 0 && @number1 > 0
      limit = (@number2 - @number1) + 1
    elsif number1 > 0
      limit = 1
    else
      limit = 0
    end

    if @number1 == 0
      @number1 = 99
    end

    if limit = 0
      limit = 100
    end

    while limit > 0
      to_s
      limit -= 1
    end
  end

  def to_s
    "#{first_line(@number1)}\n"
    "#{secound_line(@number1)}\n"
  end

  def first_line(@number1)
    "#{bottles(@number1)} bottles of beer on the wall, #{bottles(@number1)} bottles of beer."
  end

  def secound_line(@number1)
    "Take one down and pass it around, #{bottles(@number1 - 1)} bottle of beer on the wall."
  end

  def bottles(remaining)
    case remaining
    when -1
      '99 bottle'
    when 0
      'no more bottle'
    when 1
      '1 bottle'
    else
      '{remaining}bottle'
    end
  end
end
