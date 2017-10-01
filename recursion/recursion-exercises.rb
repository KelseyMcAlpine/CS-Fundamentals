# reverse the elements in an integer array in place
# time: O(n) / Linear - dependent on size of array
# space: O(1) / Constant - variables independent of size of array
def reverse(array)

  return array if array.length == 1

  new_array = array.shift

  reverse(array) << new_array
end

# check if a given input string is a palindrome. return true or false
# time: O(n) / Linear - dependent on length of string
# space: O(1) / Constant - variables independent of length of string
def is_palindrome(string)
  return true if string.length <= 1

  return is_palindrome(string[1..-2]) if string[0] == string[-1]

  return false
end

# return the nth Fib number in the Fibonacci series
# time: O(n) / Linear - dependent on n's value
# space: O(1) / Constant - variables independent of n's value
def find_nth_fib(n)
  return "n must be greater than 0" if n < 0

  return 0 if n == 0

  return 1 if n == 1

  return find_nth_fib(n - 1) + find_nth_fib(n - 2)
end

# calculate factorial of a number
# time: O(n) / Linear - dependent on n's value
# space: O(1) / Constant - variables independent of n's value
def factorial(n)
  return "n must be greater than 1" if n < 1

  return 1 if n == 1

  return n * factorial(n - 1)
end
