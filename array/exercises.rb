def first_duplicate(array)
  seen = {}

  array.each do | num |
    return num if seen[num]
    seen[num] = true
  end

  return "No duplicates"
end

puts "BUG: Should return 3" if first_duplicate([2, 3, 3, 1, 5, 2]) != 3
puts "BUG: Should return 'no duplicates'" if first_duplicate([1, 2, 3, 4, 5, 6]) != "No duplicates"
puts "BUG: Should return 'no duplicates'" if first_duplicate([1]) != "No duplicates"
puts "BUG: Should return 1" if first_duplicate([1, 1]) != 1
puts "BUG: Should return 6" if first_duplicate([8, 4, 6, 2, 6, 4, 7, 9, 5, 8]) != 6
puts "BUG: Should return 1" if first_duplicate([1, 1, 2, 2, 1]) != 1


def firstNotRepeatingCharacter(s)
    non_repeats = {}
    repeated = s.length + 1

    s.each_char.with_index do | char, index |
        if non_repeats[char]
          non_repeats[char] = repeated
        else
          non_repeats[char] = index
        end
    end

    return '_' if non_repeats.values.min == repeated

    first_non_repeat = non_repeats.key(non_repeats.values.min)
    return first_non_repeat
end

puts "BUG: Should return k" if firstNotRepeatingCharacter("kelsey") != "k"
puts "BUG: Should return h" if firstNotRepeatingCharacter("hello") != "h"
puts "BUG: Should return _" if firstNotRepeatingCharacter("aabbcc") != "_"
puts "BUG: Should return d" if firstNotRepeatingCharacter("aabbccd") != "d"
