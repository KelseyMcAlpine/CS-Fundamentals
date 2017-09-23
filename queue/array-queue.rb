class Queue
  attr_reader :queue, :max_size, :front

  def initialize(max_size)
    @max_size = max_size
    @queue = Array.new
  end

  # returns true is the data structure is empty, false otherwise
  # time: O(1) / Constant - does not depend on the size of the queue
  # space : O(1) / Constant - varaiables are independent of the size of the queue
  def is_empty()
    @queue == []
  end

  # returns true is the data structure is empty, false otherwise
  # time: O(n) / Linear - is dependent on the size of the queue
  # space : O(1) / Constant - vaaibles are independent of the size of the queue
  def is_full()
    @queue.size == @max_size
  end

  # returns the number of items in the data structure
  # time: O(n) / Linear - dependent on the size of the queue
  # space : O(1) / Constant - variables are independent of the size of the queue
  def size()
    return nil if is_empty

    i = 0

    while @queue[i] != nil
      i += 1
    end

    return i
  end

  # returns the item that would be dequeued next (for Queue)
  # time: O(1) / Constant - looking at the first element does not depend on the size of the queue
  # space : O(1) / Constant - varaiables used are independent of the size of the queue
  def front()
    is_empty ? "Queue is empty" : @queue[0]
  end

  # returns the minimum integer data value in the data structure
  # time: O(n) / Linear - going through all elements to find the minimum is dependent on the size of the queue
  # space : O(1) / Constant - varaiables used are independent of the size of the queue
  def min()
    return "Queue is empty." if is_empty

    min = @queue[0]

    @queue.each do | i |
      min = i if i < min
    end

    return min
  end

  # returns the maximum integer data value in the data structure
  # time: O(n) / Linear - going through all elements to find the max is dependent on the size of the queue
  # space : O(1) / Constant - variables used are independent of the size of the queue
  def max()
    return "Queue is empty." if is_empty

    max = @queue[0]

    @queue.each do | i |
      max = i if i > max
    end

    return max
  end

  # adds item to the queue
  # time: O(1) / Constant -
  # space : O(1) / Constant - variables used are independent of the size of the queue
  def enqueue(value)
    is_full ? "Queue is full" : @queue.push(value)
  end

  # removes and returns the next item in line
  # time: O(1) / Constant -
  # space : O(1) / Constant - variables used are independent of the size of the queue
  def dequeue()
    return "Queue is empty" if is_empty

    temp = @queue[0]
    @queue.delete_at(0)

    return temp
  end

  # prints all values in the queue
  # time: O(n) / Linear - printing each element is dependent on the size of the queue
  # space : O(1) / Constant - variables used are independent of the size of the queue
  def view
    puts "front"
    puts "====="

    @queue.each do | i |
      puts i
    end

    puts "====="
    puts "back"
  end
end
