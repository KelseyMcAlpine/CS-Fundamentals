class Queue
  attr_reader :queue, :max_size, :front

  def initialize(max_size)
    @max_size = max_size
    @queue = Array.new
    @front = nil
  end

  # returns true is the data structure is empty, false otherwise
  # time: O(1) / Constant - does not depend on the size of the queue
  # space : O(1) / Constant - varaiables are independent of the size of the queue
  def is_empty()
    @front == nil
  end

  # returns true is the data structure is empty, false otherwise
  # time: O(n) / Linear - is dependent on the size of the queue
  # space : O(1) / Constant - vaaibles are independent of the size of the queue
  def is_full()
    @queue.size == @max_size
  end

  # returns the number of items in the data structure
  # time: O(n) / Linear -
  # space : O(1) / Constant -
  def size()
    return nil if @front == nil

    i = 0

    while @queue[i] != nil
      i += 1
    end

    return i
  end

  # returns the item that would be dequeued next (for Queue)
  # time: O(1) / Constant -
  # space : O(1) / Constant -
  def front()
    return "Queue is empty." if is_empty

    @queue[0]
  end

  # returns the minimum integer data value in the data structure
  # time: O(n) / Linear -
  # space : O(1) / Constant -
  def min()
    return "Queue is empty." if is_empty

    min = @queue[0]

    @queue.each do | i |
      min = i if i < min
    end

    return min
  end

  # returns the maximum integer data value in the data structure
  # time: O(n) / Linear -
  # space : O(1) / Constant -
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
  # space : O(1) / Constant -
  def enqueue(value)
    return "Queue is full" if is_full

    @queue.push(value)

    @front = 0 if size == nil
  end

  # removes and returns the next item in line
  # time: O(1) / Constant -
  # space : O(1) / Constant -
  def dequeue()
    return "Queue is empty" if is_empty

    temp = @queue[0]
    @queue.delete_at(0)
    @front = nil if size == 0

    return temp
  end

  # prints all values in the queue
  # time: O(n) / Linear -
  # space : O(1) / Constant -
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
