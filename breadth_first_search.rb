require './binary_search_tree.rb'

def breadth_first_search(target, root)
  queue = [root]
  curr = nil
  until queue.empty?
    curr = queue.shift
    break if curr.value == target
    queue << curr.left if curr.left != nil
    queue << curr.right if curr.right != nil
  end
  if curr.value == target
    return curr
  else
    puts "Error: Value not found!"
    return nil
  end
end

arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
root = build_tree(arr)
node = breadth_first_search(8, root)
p node