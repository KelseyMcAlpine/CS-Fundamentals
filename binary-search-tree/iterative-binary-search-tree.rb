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
  def initialize()
    @root = nil
  end

  # Return true if the bst is empty, false otherwise.
  # Time: O() / -
  # Space: O() / -
  def is_empty()
    @root == nil
  end

  # Search for a given integer value in the Binary Search Tree.
  # Return true if the value is found, false otherwise.
  # Time: O() / -
  # Space: O() / -
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
  # Time: O(log n) / -
  # Space: O(1) / -
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
    puts "not implemented"
  end

  # Compute the height of the Binary Search Tree.
  # Time: O() / -
  # Space: O() / -
  def height()
    puts "not implemented"
  end

  # Print values in the Binary Search Tree in pre-order.
  # Time: O() / -
  # Space: O() / -
  def print_preorder()
    return "Empty BST" if is_empty

    stack = [@root]

    while !stack.empty?
      current = stack.pop

      puts current.value

      stack.push(current.right) if current.right
      stack.push(current.left) if current.left
    end
  end

  # Print values in the Binary Search Tree in in-order.
  # Time: O() / -
  # Space: O() / -
  def print_in_order()
    return "Empty BST" if is_empty
    puts "not implemented"
  end

  # Print values in the Binary Search Tree in post-order.
  # Time: O() / -
  # Space: O() / -
  def print_post_order()
    return "Empty BST" if is_empty
    puts "not implemented"
  end

  # Print values in the Binary Search Tree in level-order.
  # (Breadth-first traversal)
  # Time: O() / -
  # Space: O() / -
  def print_level_order()
    return "Empty BST" if is_empty
    puts "not implemented"
  end
end
