class Node
  attr_accessor :value, :parent, :left, :right

  def initialize(value=nil)
    @value = value
    @parent = nil
    @left = nil
    @right = nil
  end
end

def build_tree(arr)
  head = nil
  arr.uniq.each do |data|
    new_node = Node.new(data)
    if head == nil
      head = new_node
    else
      parent = head
      loop do 
        if new_node.value < parent.value
          if parent.left == nil
            parent.left = new_node
            break
          else
            parent = parent.left
          end
        else
          if parent.right == nil
            parent.right = new_node
            break
          else
            parent = parent.right
          end
        end
      end
    end
  end
  head
end

arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
head = build_tree(arr)