module BookKeeping
  VERSION = 4
end

class Gigasecond
  def self.from(time)
    time + 10**9
  end
end
p Gigasecond.from(Time.utc(1991, 6, 12, 1, 30))

