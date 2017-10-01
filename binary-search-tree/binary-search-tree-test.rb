require './iterative-binary-search-tree.rb'
# require './recursive-binary-search-tree.rb'

my_bst = BinarySearchTree.new()
puts "BUG: my_bst should be empty" if my_bst.is_empty != true

my_bst.insert(8)
my_bst.insert(3)
my_bst.insert(10)
my_bst.insert(1)
my_bst.insert(6)
my_bst.insert(14)
my_bst.insert(13)
my_bst.insert(7)
my_bst.insert(4)
# my_bst.insert(15)
puts "BUG: my_bst should not be empty" if my_bst.is_empty != false
puts "BUG: searching for 100 should return false" if my_bst.search(100) != false
puts "BUG: searching for 13 should return true" if my_bst.search(13) != true
puts "BUG: my_bst should have a height of 4" if my_bst.height != 4

puts my_bst.delete(100)
# puts my_bst.delete(15)

puts "\nPrinting pre-order"
puts "(8, 3, 1, 6, 4, 7, 10, 14, 13):"
my_bst.print_preorder

puts
puts "\nPrinting in-order"
puts "(1, 3, 4, 6, 7, 8, 10, 13, 14):"
my_bst.print_in_order

puts "\nPrinting post-order"
puts "(1, 4, 7, 6, 3, 13, 14, 10, 8):"
my_bst.print_post_order

puts "\nPrinting in breadth first/level order"
puts "(8, 3, 10, 1, 6, 14, 4, 7, 13):"
my_bst.print_level_order
