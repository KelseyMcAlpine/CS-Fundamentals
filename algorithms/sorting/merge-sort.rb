def mergesort(array)
  return array if array.length == 0 || array.length == 1

  left, right = split_array(array)

  left = mergesort(left)
  right = mergesort(right)

  return combine(left, right)
end

def split_array(array)
  middle = array.length / 2

  left = [0...middle]
  right = [middle..-1]

  return left, right
end

def combine(left, right)
  if right.empty?
    return left
  end

  if left.empty?
    return right
  end

  smallest_number = left.first <= right.first ? left.shift : right.shift

  [smallest_number].concat(combine(left, right))
end

def combine2(a, b)
    result = []
    while !a.empty? && !b.empty?
        if a.first < b.first
          result << a.shift
        else
          result << b.shift
        end
    end
    while !a.empty?
      result << a.shift
    end
    while !b.empty?
      result << b.shift
    end
    return result
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
complete = mergesort(a)
puts "AFTER MERGESORT \n" + complete.to_s
