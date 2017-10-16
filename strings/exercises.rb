# edge cases to consier:
# - ASCII string or unicode string?
# - capitalization
# - 

# check if a string has all unique characters
# what if you cannot use additional data structures?
# time: Linear / O(n) - 
# space: Constant / O(1) - 
def is_unique(string)
  return false if string.length > 128
  characters = Hash.new
  
  string.each_char do | char | 
    return false if characters.has_key? char
    characters[char] = true
  end
  
  return true 
end

puts "BUG: is_unique('hello') should be false" if is_unique("hello") != false
puts "BUG: is_unique('taco') should be true" if is_unique("taco") != true

# given two strings check if one is a permutation of the other
def is_permutation(string1, string2)
  puts "not implemented"
end

puts "BUG: is_permutation('hello', 'world') should be false" if is_permutation("hello", "world") != false
puts "BUG: is_permutation('who', 'how') should be true" if is_permutation("who", "how") != true

# replace all spaces in a string with %20 
def make_url(string)
  puts "not implemented"
end

puts "BUG: URLify('hello world') should return hello%world" if make_url('hello world') != 'hello%20world'

# check if string is a permutation of a palindrome
def is_palindrome_permutation()
  puts "not implemented"
end

puts "BUG: is_palindrome_permutation('tact coa') should return true" if is_palindrome_permutation("tact coa") != true
puts "BUG: is_palindrome_permutation('hello world') should return false" if is_palindrome_permutation("hello world") != false
