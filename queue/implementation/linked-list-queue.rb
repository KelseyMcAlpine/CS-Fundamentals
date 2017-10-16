class Node
  attr_reader :value # allow external entities to read value but not write
  attr_accessor :next # allow external entities to read or write next node

  def initialize(value)
    @value = value
    @next = nil
  end
end

class Queue
  attr_reader :head, :max_size

  def initialize(max_size)
    @max_size = max_size
    @current_size = 0
    @head = nil
  end

  # returns true is the data structure is empty, false otherwise
  # time: O(1) / Constant - time to access the head is independent of the size of the queue
  # space: O(1) / Constant - variables used are independent of the size of the queue
  def is_empty()
    @head == nil
  end

  # returns true is the data structure is full, false otherwise
  # time: O(1) / Constant - does not depend on the size of the queue
  # space: O(1) / Constant - variables used are independet of the size of the queue
  def is_full()
    @current_size == @max_size
  end

  # returns the number of items in the data structure
  # time: O(n) / Linear - the time it takes to count all nodes is dependent on the size of queue
  # space: O(1) / Constant - the variables used are independet of the size of the queue
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

  # returns the item that would be dequeued next (for Queue)
  # time: O(1) / Constant - accessing the head does not depend on the size of the queue
  # space: O(1) / Constant - the variables used are independet of the size of the queue
  def front()
    is_empty ? "Queue is empty" : @head.value
  end

  # returns the minimum integer data value in the data structure
  # time: O(n) / Linear - visiting all elements to find the minimum is dependent on the size of the queue
  # space: O(1) / Constant - the variables used are independet of the size of the queue
  def min()
    return "Queue is empty." if is_empty

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

  # returns the maximum integer data value in the data structure
  # time: O(n) / Linear - visiting all elements to find the maximum is dependent on the size of the queue
  # space: O(1) / Constant - the variables used are independet of the size of the queue
  def max()
    return "Queue is empty." if is_empty

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

  # adds item to queue
  # time: O(n) / Linear - the node is always added at the end of the linked list so it's dependent on the size of the queue
  # space: O(1) / Constant - the variables are independent of the size of the queue
  def enqueue(value)
    return "Queue is full" if is_full

    new_node = Node.new(value)
    @current_size += 1

    return @head = new_node if is_empty

    current = @head

    until current.next == nil
      current = current.next
    end

    current.next = new_node
  end

  # removes and returns the next item in line
  # time: O(1) / Constant - does not depend on the size of the queue
  # space: O(1) / Constant - the variables are independent of the size of the queue
  def dequeue()
    return "Queue is empty" if is_empty

    current = @head
    @head = current.next
    @current_size -= 1

    return current.value
  end

  # prints all values in the queue
  # time: O(n) / Linear - must visit every elemenent so it's dependent on the size of the queue
  # space: O(1) / Constant - the variables are independent of the size of the queue
  def view
    puts "front"
    puts "====="

    current = @head

    while current != nil
      puts current.value

      current = current.next
    end

    puts "====="
    puts "back"
  end
end
