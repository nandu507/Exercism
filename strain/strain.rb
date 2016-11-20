class Array
  def keep
    each_with_object ([]) do |element,item|
      item << element if yield(element)
    end
  end
  def discard
    each_with_object ([]) do |element,item|
      item << element if !yield(element)
    end
  end
end
