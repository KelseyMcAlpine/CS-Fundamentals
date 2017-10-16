# reverse the elements in an integer array in place
# time: O(n) / Linear - dependent on size of array
# space: O(1) / Constant - variables independent of size of array
def reverse(array)
  i = 0
  j = array.length - 1

  while i < j
    array[i], array[j] = array[j], array[i]
    i += 1
    j -= 1
  end

  return array
end

# check if a given input string is a palindrome. return true or false
# time: O(n) / Linear - dependent on length of string
# space: O(1) / Constant - variables independent of length of string
def is_palindrome(string)
  return true if string.length <= 1

  i = 0
  j = string.length - 1

  while i < j
    return false if string[i] != string[j]
    i += 1
    j -= 1
  end

  return true
end

# return the nth Fib number in the Fibonacci series
# time: O(n) / Linear - dependent on n's value
# space: O(1) / Constant - variables independent of n's value
def find_nth_fib(n)
  return "n must be greater than 0" if n < 0

  a = 0
  b = 1

  n.times do
    temp = a
    a = b
    b = temp + a
  end

  return a
end

# calculate factorial of a number
# time: O(n) / Linear - dependent on n's value
# space: O(1) / Constant - variables independent of n's value
def factorial(n)
  return "n must be greater than 1" if n < 1

  factorial = 1

  until n == 0
    factorial *= n
    n -= 1
  end

 factorial
end
