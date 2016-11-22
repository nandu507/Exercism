class Series
  def initialize(number)
    @number = number
  end
  def slices(limit)
    storage = @number.split("").map(&:to_i)
    return raise ArgumentError if limit > storage.length
    temp = Array.new
    series = Array.new
    until storage.length < limit
      temp = storage[0,limit]
      storage.shift
      series << temp
    end
    series
  end
end
