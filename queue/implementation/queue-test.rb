# uncomment file to test
# require './array-queue.rb'
# require './2-stack-queue.rb'
require './linked-list-queue.rb'

# started with empty queue
my_queue = Queue.new(10)
puts "BUG: my_queue.size should be nil" if my_queue.size.nil? != true
puts "BUG: my_queue.is_empty should be true" if my_queue.is_empty != true
puts "BUG: my_queue.is_full should be false" if my_queue.is_full != false

# fill queue and check that front remains the first element
my_queue.enqueue(4)
my_queue.enqueue(3)
my_queue.enqueue(10)
my_queue.enqueue(8)
my_queue.enqueue(7)
my_queue.enqueue(2)
my_queue.enqueue(1)
my_queue.enqueue(6)
my_queue.enqueue(5)
my_queue.enqueue(9)

# check characteristics of full queue
puts "BUG: my_queue.front should be 4" if my_queue.front != 4
puts "BUG: my_queue.size should be 10" if my_queue.size != 10
puts "BUG: my_queue.is_empty should be false" if my_queue.is_empty != false
puts "BUG: my_queue.is_full should be true " if my_queue.is_full != true
puts "BUG: my_queue.min should be 1" if my_queue.min != 1
puts "BUG: my_queue.max should be 10" if my_queue.max != 10

# looking at top elemenent does not remove it
my_queue.front
puts "BUG: looking at top element should not remove it" if my_queue.size != 10

# is there a better way to include this test?
puts my_queue.enqueue(100)

# begin removing all elements from queue
puts "BUG: my_queue.dequeue() should return 4" if my_queue.dequeue != 4
puts "BUG: my_queue.dequeue() should return 3" if my_queue.dequeue != 3
puts "BUG: my_queue.dequeue() should return 9" if my_queue.dequeue != 10
puts "BUG: my_queue.dequeue() should return 8" if my_queue.dequeue != 8
puts "BUG: my_queue.dequeue() should return 7" if my_queue.dequeue != 7
puts "BUG: my_queue.dequeue() should return 2" if my_queue.dequeue != 2
puts "BUG: my_queue.dequeue() should return 1" if my_queue.dequeue != 1

# should have new characteristics
puts "BUG: my_queue.size should return 6" if my_queue.size != 3
puts "BUG: max should be 9" if my_queue.max != 9
puts "BUG: min should be 2" if my_queue.min != 5

# finish removing all elements from queue
puts "BUG: my_queue.dequeue() should return 6" if my_queue.dequeue != 6
puts "BUG: my_queue.dequeue() should return 5" if my_queue.dequeue != 5
puts "BUG: my_queue.dequeue() should return 10" if my_queue.dequeue != 9
puts "BUG: my_queue.is_empty should be true" if my_queue.is_empty != true

# is there a better way to include this test?
puts my_queue.dequeue
