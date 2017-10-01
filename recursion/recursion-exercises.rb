# reverse the elements in an integer array in place
# time: O /
# space: O /
def reverse(array)

  return array if array.length == 1

  new_array = array.shift

  reverse(array) << new_array
end

# check if a given input string is a palindrome. return true or false
# time: O /
# space: O /
def is_palindrome(string)
  return true if string.length <= 1

  return is_palindrome(string[1..-2]) if string[0] == string[-1]

  return false
end

# return the nth Fib number in the Fibonacci series
# time: O /
# space: O /
def find_nth_fib(n)
  return "n must be greater than 0" if n < 0

  return 0 if n == 0

  return 1 if n == 1

  return find_nth_fib(n - 1) + find_nth_fib(n - 2)
end

# calculate factorial of a number
# time: O /
# space: O /
def factorial(n)
  return "n must be greater than 1" if n < 1

  return 1 if n == 1

  return n * factorial(n - 1)
end
