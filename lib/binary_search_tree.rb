# There are many ways to implement these methods, feel free to add arguments 
# to methods as you see fit, or to create helper methods.
require_relative 'bst_node'
require 'byebug'
class BinarySearchTree

  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value, node = @root)
    # debugger

    unless @root
      @root = BSTNode.new(value)
    else
      return nil unless node
        if node.value < value
          node.right = BSTNode.new(value) unless insert(value, node.right) 
        else
          node.left = BSTNode.new(value) unless insert(value, node.left) 
        end
    end
    value
  end

  def find(value, tree_node = @root)
    # debugger
    return tree_node if tree_node == nil
    return tree_node if tree_node.value == value

    if tree_node.value < value
      return find(value, tree_node.right)
    else
      return find(value, tree_node.left)
    end
    nil
  end

  def delete(value)
  end

  # helper method for #delete:
  def maximum(tree_node = @root)

  end

  def children(node)
    children = []
    
    children.push(node.left) if node.left
    children.push(node.right) if node.right

    children
  end

  def depth(tree_node = @root)

  end 

  def is_balanced?(tree_node = @root)

  end

  def in_order_traversal(tree_node = @root, arr = [])

  end


  private
  # optional helper methods go here:

end
