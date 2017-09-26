class Stack
  attr_reader :stack, :max_size, :top

  def initialize(max_size)
    @max_size = max_size
    @current_size = 0
    @stack = Array.new
  end

  # returns true is the data structure is empty, false otherwise
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def is_empty()
    @stack == []
  end

  # returns true if the data structure is full, false otherwise
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def is_full()
    @current_size == @max_size
  end

  # returns the number of items in the data structure
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def size()
    return nil if is_empty

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
    is_empty ? "Stack is empty." : @stack[-1]
  end

  # returns the minimum integer data value in the data structure
    # time: O(n) - dependent on size of stack
    # space: O(1) - variables independent of size of stack
  def min()
    return "Stack is empty." if is_empty

    min = @stack[-1]

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

    max = @stack[-1]

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

    @stack.push(value)
    @current_size += 1
  end

  # removes and returns the top item
    # time: O(1) - not dependent on size of stack
    # space: O(1) - variables not dependent on size of stack
  def pop()
    return "Stack is empty" if is_empty

    temp = @stack[-1]
    @stack.delete_at(-1)
    @current_size -= 1

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
