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
    @head = nil
  end

  # returns true is the data structure is empty, false otherwise
  # time: O()
  # space : O()
  def is_empty()
    puts "Not implemented"
  end

  # returns true is the data structure is empty, false otherwise
  # time: O()
  # space : O()
  def is_full()
    puts "Not implemented"
  end

  # returns the number of items in the data structure
  # time: O()
  # space : O()
  def size()
    puts "Not implemented"
  end

  # returns the item that would be dequeued next (for Queue)
  # time: O()
  # space : O()
  def front()
    puts "Not implemented"
  end

  # returns the minimum integer data value in the data structure
  # time: O()
  # space : O()
  def min()
    puts "Not implemented"
  end

  # returns the maximum integer data value in the data structure
  # time: O()
  # space : O()
  def max()
    puts "Not implemented"
  end

  # adds item to the queue
  # time: O()
  # space : O()
  def enqueue(value)
    puts "Not implemented"
  end

  # removes and returns the next item in line
  # time: O()
  # space : O()
  def dequeue()
    puts "Not implemented"
  end

  # prints all values in the queue
  # time: O()
  # space : O()
  def view
    puts "Not implemented"
  end
end
