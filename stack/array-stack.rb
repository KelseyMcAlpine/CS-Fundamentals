class Stack
  attr_reader :stack, :max_size, :top

  def initialize(max_size)
    @max_size = max_size
    @stack = Array.new
    @top = nil
  end

  # returns true is the data structure is empty, false otherwise
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def is_empty()
    @top == nil || @stack.size == 0
  end

  # returns true if the data structure is full, false otherwise
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def is_full()
    @stack.size == @max_size
  end

  # returns the number of items in the data structure
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def size()
    return nil if @top == nil

    i = 0

    while @stack[i] != nil
      i += 1
    end

    return i
  end

  # returns the item that would be popped next
    # time: O(1) - does not need to go through all the elements
    # space: O(1) - variables independent of size of stack
  def top()
    raise "Stack is empty." if is_empty

    return @stack.last # could also use @stack[@top]
  end

  # returns the minimum integer data value in the data structure
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def min()
    puts "not implemented"
  end

  # returns the maximum integer data value in the data structure
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def max()
    puts "not implemented"
  end

  # adds item to stack
    # time: O()
    # space: O()
  def push(value)
    return "Stack is full" if is_full

    size == nil ? @top = 0 : @top += 1

    @stack.push(value)
  end

  # removes and returns the top item
    # time: O()
    # space: O()
  def pop()
    return "Stack is empty" if is_empty
    temp = @stack[@top]
    @stack.delete_at(@top)
    @top -= 1
    return temp
  end

  # use this to print out visual of the stack
    # time: O(1)
    # space: O()
  def view
    puts "bottom"
    puts "====="

    @stack.each do | i |
      puts i
    end

    puts "====="
    puts "top"
  end
end

## --- END OF METHODS ---

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

# raise error thrown if try to add to a full stack
# is there a better way to include this test?
puts my_stack.push(11)
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

# raise error thrown if try to pop element from empty stack
# is there a better way to include this test?
puts my_stack.pop
