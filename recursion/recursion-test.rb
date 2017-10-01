require './recursion-exercises.rb'
# require './iterative-exercises.rb'

puts "BUG: Reverse array should return [4, 2, 1, 5]" if reverse([5, -1, 2, 4]) != [4, 2, -1, 5]
puts "BUG: Reverse array should return [1]" if reverse([1]) != [1]

puts "BUG: is_palindrome should return true" if is_palindrome("tacocat") != true
puts "BUG: is_palindrome should return true" if is_palindrome("tacoocat") != true
puts "BUG: is_palindrome should return false" if is_palindrome("taco") != false

puts "BUG: find_nth_fib(7) should return 13" if find_nth_fib(7) != 13
puts "BUG: find_nth_fib(-1) should return error" if find_nth_fib(-1) != "n must be greater than 0"

puts "BUG: factorial(5) should return 120" if factorial(5) != 120
puts "BUG: factorial(0) should return error" if factorial(0) != "n must be greater than 1"
