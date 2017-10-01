class Node
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinarySearchTree
  def initialize
    @root = nil
  end

  # Return true if the bst is empty, false otherwise.
  # Time: O(1) / Constant - does not depend on the size of the bst
  # Space: O(1) / Constant - variables used do not depend on the size of the bst
  def is_empty
    @root == nil
  end

  # Search for a given integer value in the Binary Search Tree.
  # Return true if the value is found, false otherwise.
  # Time: O(log n) / quadratic - reduce searchable nodes by half each step
  # Space: O(1) / Constant - number of variables user are
  def search(value)
    return false if is_empty

    current = @root

    while current != nil
      if current.value == value
        return true
      else
        current = current.value < value ? current.right : current.left
      end
    end

    return false
  end

  # Insert a given integer value in the Binary Search Tree.
  # Time: O(log n) / quadratic - reduce search for parent node by half each step
  # Space: O(1) / Constant - number of variables user are
  def insert(value)
    new_node = Node.new(value)

    return @root = new_node if is_empty

    current = @root
    parent = nil

    while current != nil
      parent = current
      current = value <= current.value ? current.left : current.right
    end

    value <= parent.value ? parent.left = new_node : parent.right = new_node
  end

  # Delete a given integer value in the Binary Search Tree.
  # Time: O() / -
  # Space: O() / -
  def delete(value)
    return "BST is empty" if is_empty

    parent = nil
    current = @root

    while current && current.value != value
      parent = current
      current = current.value > value ? current.left : current.right
    end

    return "Value to delete not found" if current == nil

    if !current.left && !current.right
      parent.left = nil
      parent.right = nil
    end

    puts "NOT COMPLETE"
  end

  # Compute the height of the Binary Search Tree.
  # Time: O(n) / Linear - dependent on size of BST
  # Space: O(n) / Linear - requires extra space for queue
  def height
    return 0 if is_empty

    queue = [@root]
    height = 0

    while true
      node_count = queue.length

      return height if node_count == 0

      height += 1

      while node_count > 0
        node = queue.shift()

        queue << node.left unless node.left.nil?
        queue << node.right unless node.right.nil?

        node_count -= 1
      end
    end
  end

  # Print values in the Binary Search Tree in pre-order.
  # Time: O(n) / Linear - dependent on size of BST
  # Space: O(n) / Linear - requires extra space for stack
  def print_preorder
    return "Empty BST" if is_empty

    stack = [@root]

    until stack.empty?
      current = stack.pop

      puts current.value

      stack << current.right unless current.right.nil?
      stack << current.left unless current.left.nil?
    end
  end

  # Print values in the Binary Search Tree in in-order.
  # Time: O(n) / Linear - dependent on size of BST
  # Space: O(n) / Linear - requires extra space for stack
  def print_in_order
    return "Empty BST" if is_empty

    current = @root
    stack = []

    while current || !stack.empty?
      if current != nil
        stack.push(current)
        current = current.left
      elsif !stack.empty?
        current = stack.pop()
        puts current.value

        current = current.right
      end
    end
  end

  # Print values in the Binary Search Tree in post-order.
  # Time: O(n) / Linear - dependent on size of BST
  # Space: O(n) / Linear - requires extra space for stack
  def print_post_order
    return "Empty BST" if is_empty

    stack_1 = [@root]
    stack_2 = []

    until stack_1.empty?
      current = stack_1.pop
      stack_2 << current

      stack_1 << current.left unless current.left.nil?
      stack_1 << current.right unless current.right.nil?
    end

    until stack_2.empty?
      current = stack_2.pop
      puts current.value
    end
  end

  # Print values in the Binary Search Tree in level-order.
  # (Breadth-first traversal)
  # Time: O(n) / Linear - dependent on size of BST
  # Space: O(n) / Linear - requires extra space for queue
  def print_level_order
    return "Empty BST" if is_empty

    queue = [@root]

    until queue.empty?
        current = queue.pop
        puts current.value

        queue << current.left unless current.left.nil?
        queue << current.right unless current.right.nil?
    end
  end
end
