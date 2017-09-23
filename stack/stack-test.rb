# uncomment file to test
# require './array-stack.rb'
# require './2-queue-stack.rb'
require './linked-list-stack.rb'

# started with empty stack
my_stack = Stack.new(10)
puts "BUG: my_stack.size should be nil" if my_stack.size.nil? != true
puts "BUG: my_stack.is_empty should be true" if my_stack.is_empty != true
puts "BUG: my_stack.is_full should be false" if my_stack.is_full != false

# fill stack and check that each new item is 'top' element
my_stack.push(4)
puts "BUG: my_stack.top should be 4" if my_stack.top != 4
my_stack.push(3)
puts "BUG: my_stack.top should be 3" if my_stack.top != 3
my_stack.push(9)
puts "BUG: my_stack.top should be 9" if my_stack.top != 9
my_stack.push(8)
puts "BUG: my_stack.top should be 8" if my_stack.top != 8
my_stack.push(7)
puts "BUG: my_stack.top should be 7" if my_stack.top != 7
my_stack.push(2)
puts "BUG: my_stack.top should be 2" if my_stack.top != 2
my_stack.push(1)
puts "BUG: my_stack.top should be 1" if my_stack.top != 1
my_stack.push(6)
puts "BUG: my_stack.top should be 6" if my_stack.top != 6
my_stack.push(5)
puts "BUG: my_stack.top should be 5" if my_stack.top != 5
my_stack.push(10)
puts "BUG: my_stack.top should be 10" if my_stack.top != 10

# full stack
puts "BUG: my_stack.size should be 10" if my_stack.size != 10

# looking at top elemenent does not remove it
my_stack.top
puts "BUG: looking at top element should not remove it" if my_stack.size != 10

# checking characteristics of stack
puts "BUG: my_stack.is_empty should be false" if my_stack.is_empty != false
puts "BUG: my_stack.is_full should be true " if my_stack.is_full != true
puts "BUG: my_stack.min should be 1" if my_stack.min != 1
puts "BUG: my_stack.max should be 10" if my_stack.max != 10

# is there a better way to include this test?
puts my_stack.push(100)

# begin removing all elements from stack
puts "BUG: my_stack.pop() should return 10" if my_stack.pop != 10
puts "BUG: my_stack.pop() should return 5" if my_stack.pop != 5
puts "BUG: my_stack.pop() should return 6" if my_stack.pop != 6
puts "BUG: my_stack.pop() should return 1" if my_stack.pop != 1

# should have new characteristics
puts "BUG: my_stack.size should return 6" if my_stack.size != 6
puts "BUG: max should be 9" if my_stack.max != 9
puts "BUG: min should be 2" if my_stack.min != 2

# finish removing all elements from stack
puts "BUG: my_stack.pop() should return 2" if my_stack.pop != 2
puts "BUG: my_stack.pop() should return 7" if my_stack.pop != 7
puts "BUG: my_stack.pop() should return 8" if my_stack.pop != 8
puts "BUG: my_stack.pop() should return 9" if my_stack.pop != 9
puts "BUG: my_stack.pop() should return 3" if my_stack.pop != 3
puts "BUG: my_stack.pop() should return 4" if my_stack.pop != 4


puts "BUG: my_stack.is_empty should be true" if my_stack.is_empty != true

# is there a better way to include this test?
puts my_stack.pop
