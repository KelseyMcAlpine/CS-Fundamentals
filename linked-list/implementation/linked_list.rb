# Defines a node in the singly linked list
class Node
  attr_reader :data # allow external entities to read value but not write
  attr_accessor :next # allow external entities to read or write next node

  def initialize(value)
    @data = value
    @next = nil
  end
end

# Defines the singly linked list
class LinkedList
  def initialize
    @head = nil # keep the head private. Not accessible outside this class
  end

  # time: O(1) / Constant - the node is always added at the beginning so the time it takes is independent of how long the linked list is
  # space: O(1) / Constant - the variables are independent of the size of the linked list
  def insert(value)
    next_node = Node.new(value)

    if @head == nil
      @head = next_node
    else
      next_node.next = @head
      @head = next_node
    end

    return
  end

  # time: O(n) / Linear - the time it takes to search all nodes is dependent on the length of the linked list (n)
  # space: O(1) / Constant - the variables are independent of the size of the linked list
  def search(value)
    current = @head

    while current != nil
      if current.data == value
        return true
      end

      current = current.next
    end

    return false
  end

  # time: O(n) / Linear - the time it takes to search all nodes for the max value is dependent on the length of the linked list (n)
  # space: O(1) / Constant - the variables are independent of the size of the linked list
  def find_max
    if @head == nil
      puts "empty head. max is nil"
      return nil
    end

    current = @head
    max = current.data

    while current != nil
      if current.data > max
        max = current.data
      end

      current = current.next
    end

    return max
  end

  # time: O(n) / Linear - the time it takes to search all nodes for the min value is dependent on the length of the linked list (n)
  # space: O(1) / Constant - the varaibles used are independent of the size of the linked list
  def find_min
    if @head == nil
      puts "head empty. min is nil"
      return nil
    end

    current = @head
    min = current.data

    while current != nil
      if current.data < min
        min = current.data
      end

      current = current.next
    end

    return min
  end

  # time: O(n) / Linear - the time it takes to count all nodes is dependent on the size of the linked list
  # space: O(1) / Constant - the variables used are independet of the size of the linked list
  def length
    current = @head
    length = 0

    while current != nil
      length += 1
      current = current.next
    end

    return length
  end

  # time: O(n) / linear - is dependent on the size of the linked list
  # space: O(1) / Constant - vairables used are independent of the size of the linked list
  # QUESTION: what is this supposed to do if x > linkedlist length?
  def find_nth_from_beginning(n)
    current = @head
    index = 0

    while current != nil
      if index == n
        return current.data
      else
        current = current.next
        index += 1
      end
    end
  end

  # time: O(n) / linear - the time it takes to insert in ascending order is dependent on the size of the linked list
  # space: O(1) / Constant - the variables used are independent of the size of the linked list
  def insert_ascending(value)
    current = @head
    new_node = Node.new(value)

    if @head == nil || @head.data > value
      new_node.next = @head
      @head = new_node
      return
    end

    while current.next != nil && current.next.data <= value
      current = current.next
    end

    new_node.next = current.next
    current.next = new_node
  end

  # time: 0(n) / Linear - the time it takes to visit each node in the linked list is dependent on the size of the linked list
  # space: 0(1) / Constant - the variables used are independent of the size of the linked list
  def visit
    current = @head

    while current
      puts current.data
      current = current.next
    end
  end

  # time: 0(n) / Linear - Each node may be visited to determine if there's a node to be deleted
  # space: 0(1) / Constant - the variables used are independent of the size of the linked list
  def delete(value)
    if @head == nil
      puts "Error: Linked list empty - nothing to delete!"
      return
    end

    if @head.data == value
      @head = @head.next
      return
    end

    current = @head
    while current.next != nil
      if current.next.data == value
        current.next = current.next.next
        return
      end

      current = current.next
    end
  end

  # note: the nodes should be moved and not just the values in the nodes
  # adjusting the link to point to 'previous' rather than next

  # time: O(n) / Linear - To reverse  a linked list each node is visited once, therefore the time is dependent on the size of the linked list
  # space: O(1) / Constant - the variables used are independent of the size of the linked list
  def reverse
    current = @head
    previous = nil

    if current == nil
      return
    end

    while current != nil
      temp = current.next
      current.next = previous

      previous = current
      current = temp
    end

    @head = previous
  end

  # time: O(n) / linear - the time it takes to find the middle value is dependent on the size of the linked list
  # space: O(1) / Constant - the variables used are independent of the size of the linked list
  def find_middle_value
    if @head == nil
      return
    end

    if @head.next == nil
      return @head.data
    end

    slow = @head
    fast = @head.next

    while fast != nil
      slow = slow.next
      fast = fast.next

      if fast != nil
        fast = fast.next
      end
    end

    return slow.data
  end

  # time: O(n) / Linear - time is dependent on the size of the linked list
  # space: O(1) / Constant - variables used are independent of the size of the linked list
  def find_nth_from_end(n)
    current = @head
    index = 0

    while current != nil && index != n
      current = current.next
      index += 1
    end

    if current == nil
      puts "Error: The linked list has less than #{n} indexable nodes"
      return
    end

    new_current = @head
    while current.next != nil
      current = current.next
      new_current = new_current.next
    end

    return new_current.data
  end

  # uses Floyd's cycle algorithm

  # time: O(n) / linear - the time it takes to determine if there is a cycle is dependent on the size of the linked list
  # space: O(1) / Constant the variables used are independent of the size of the linked list
  def has_cycle
    if @head == nil || @head.next == nil
     return false
    end

    slow = @head
    fast = @head

    while fast != nil
     slow = slow.next
     fast = fast.next
     if fast != nil
       fast = fast.next
     end

     if slow == fast
       return true
     end
    end

    return false
  end

  # time: O(n) / Linear - the amounf of time is dependent on the size of the linked list because we must go through all nodes in order to find the end
  # space: O(1) / Constant - The variables used are independent of the size of the linked list
  def create_cycle
    if @head == nil
      return
    end

    current = @head
    while current.next != nil
      current = current.next
    end

    current.next = @head
  end
end
