require './recursion-exercises.rb'

puts "BUG: Reverse array should return [4, 2, 1, 5]" if reverse([5, 1, 2, 4]) != [4, 2, 1, 5]

puts "BUG: is_palindrome should return true" if is_palindrome(tacocat) != true
puts "BUG: is_palindrome should return false" if is_palindrome(taco) != false

puts "BUG: find_nth_fib(5) should return 5" if find_nth_fib(5) != 5
puts "BUG: find_nth_fib(5) should return 7" if find_nth_fib(5) != 13
