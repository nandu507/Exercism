class Array
  def accumulate
    each_with_object([]) do |element, item|
      item << yield(element)
    end
  end
end
