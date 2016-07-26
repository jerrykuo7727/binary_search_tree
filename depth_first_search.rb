require './binary_search_tree.rb'

def depth_first_search(target, root)
  stack = [root]
  until stack.empty?
    curr = stack.pop
    until curr == nil
      return curr if curr.value == target
      stack << curr.right if curr.right != nil
      curr = curr.left
    end
  end
  if curr != nil && curr.value == target
    return curr
  else
    puts "Error: Value not found!"
    return nil
  end
end

def dfs_rec(target, root)
  if root == nil
    return nil
  elsif root.value == target
    return root
  else
    node = dfs_rec(target, root.left)
    return node if node != nil
    node = dfs_rec(target, root.right)
    return node if node != nil
  end
  return nil
end

arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
root = build_tree(arr)

node = depth_first_search(8, root)
p node.value

node = dfs_rec(8, root)
p node.value