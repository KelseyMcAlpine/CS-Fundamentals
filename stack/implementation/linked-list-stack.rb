class Node
  attr_reader :value # allow external entities to read value but not write
  attr_accessor :next # allow external entities to read or write next node

  def initialize(value)
    @value = value
    @next = nil
  end
end

class Stack
  attr_reader :head, :max_size # allow external entities to read value but not write

  def initialize(max_size)
    @head = nil
    @max_size = max_size
    @current_size = 0
  end

  # --------
  # returns true is the data structure is empty, false otherwise
  # time: O(1) / Constant - time to access the head is independent of the size of the stack
  # space: O(1) / Constant - variables used are independent of the size of the stack
  def is_empty()
    @head == nil
  end

  # --------
  # returns true is the data structure is full, false otherwise
  # time: O(1) / Constant - does not dependent on the size of the stack
  # space: O(1) / Constant - variables used are independet of the size of the stack
  def is_full()
    @current_size == @max_size
  end

  # --------
  # returns the number of items in the data structure
  # time: O(n) / Linear - the time it takes to count all nodes is dependent on the size of stack
  # space: O(1) / Constant - the variables used are independet of the size of the stack
  def size()
    return nil if is_empty

    current = @head
    size = 0

    while current != nil
      size += 1
      current = current.next
    end

    return size
  end

  # --------
  # returns the item that would be popped next
  # time: O(1) / Constant - time to access the head does not depend on the size of the stack
  # space: O(1) / Constant - variables used do not depend on size of the stack
  def top()
    is_empty ? "Stack is empty." : @head.value
  end

  # --------
  # returns the minimum integer data value in the data structure
  # time: O(n) / Linear - time to search all nodes for the minimum value is dependent on size of the stack (n)
  # space: O(1) / Constant - variables used do not depend on size of the stack
  def min()
    return "Stack is empty." if is_empty

    current = @head
    min = current.value

    while current != nil
      if current.value < min
        min = current.value
      end

      current = current.next
    end

    return min
  end

  # --------
  # returns the maximum integer data value in the data structure
  # time: O(n) / Linear - time to search all nodes for the max value is dependent on size of the stack (n)
  # space: O(1) / Constant - variables used do not depend on size of the stack
  def max()
    return "Stack is empty." if is_empty

    current = @head
    max = current.value

    while current != nil
      if current.value > max
        max = current.value
      end

      current = current.next
    end

    return max
  end

  # ----------
  # adds item to stack
  # time: O(1) / Constant - the node is always added at the beginning so the time it takes is independent of the size of the stack
  # space: O(1) / Constant - the variables are independent of the size of the stack
  def push(value)
    return "Stack is full" if is_full

    new_node = Node.new(value)

    if is_empty
      @head = new_node
    else
      new_node.next = @head
      @head = new_node
    end

    @current_size += 1
  end

  # --------
  # removes and returns the top item
  # time: O(1) / Constant - always removing from the beginning so it does not depend on the size of the stack
  # space: O(1) / Constant - the variables are independent of the size of the stack
  def pop()
    return "Stack is empty" if is_empty

    if @head.next == nil
      temp = @head.value
      @head = nil
      return temp
    end

    temp = @head.value
    @head = @head.next
    @current_size -= 1

    return temp
  end

  # --------
  # use this to print out visual of the stack
  # time: O(n) / Linear - time to search print all nodes is dependent on size of the stack (n)
  # space: O(1) / Constant - the variables are independent of the size of the stack
  def view()
    puts "top"
    puts "====="

    current = @head

    while current != nil
      puts current.value

      current = current.next
    end

    puts "====="
    puts "bottom"
  end

end
