# reverse the elements in an integer array in place
def reverse(array)
  puts "not implemented"
end

# check if a given input string is a palindrome. return true or false
def is_palindrome(string)
  return true if string.length == 0 || string.length == 1

  i = 0
  j = -1

  if string[i] == string[j]
    return is_palindrome(string[i..j])
  end

  return false
end

# return the nth Fib number in the Fibonacci series
# starting at 0 (0, 1, 1, 2, 3, 5, 8, 13..)
def find_nth_fib(n)
  puts "not implemented"
end
