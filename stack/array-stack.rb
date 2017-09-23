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
    return "Stack is empty." if is_empty

    return @stack.last # could also use @stack[@top]
  end

  # returns the minimum integer data value in the data structure
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def min()
    return "Stack is empty." if is_empty

    min = @top

    @stack.each do | i |
      min = i if i < min
    end

    return min
  end

  # returns the maximum integer data value in the data structure
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def max()
    return "Stack is empty." if is_empty

    max = @top

    @stack.each do | i |
      max = i if i > max
    end

    return max
  end

  # adds item to stack
    # time: O(1) - not dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def push(value)
    return "Stack is full" if is_full

    size == nil ? @top = 0 : @top += 1

    @stack.push(value)
  end

  # removes and returns the top item
    # time: O(1) - not dependent on size of stack
    # space: O(1) - variables not dependent on size of stack
  def pop()
    return "Stack is empty" if is_empty

    temp = @stack[@top]
    @stack.delete_at(@top)
    @top -= 1

    return temp
  end

  # use this to print out visual of the stack
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables not dependent on size of stack
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
