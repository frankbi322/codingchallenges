class BSTNode
    attr_accessor :val, :right, :left
   def initialize(val)
      @val = val
      @left = nil
      @right = nil
   end
end

class BST
    attr_reader :root
    def initialize
       @root = nil
    end

    def insert(val)
        if @root.nil?
            @root = BSTNode.new(val)
        else
          self.insert!(@root,val)
        end
    end

    def insert!(root, val)
       return BSTNode.new(val) unless root
        if root.val >= val
           root.left = self.insert!(root.left, val)
        else
            root.right = self.insert!(root.right, val)
        end
        root
    end

    def lowest_common_ancestor(root,node1,node2)
       current = @root
       until current.val >= node1 && current.val <= node2
            if current.val > node1
                current = current.left
            end
            if current.val < node2
                current = current.right
            end
       end
       current
    end

    def find(root, val)
       count = 0
       current = @root
       until current.val == val
            if val < current.val
                current = current.left
                return false if val < current.val && current.left.nil?
                count += 1
            elsif val > current.val
                current = current.right
                return false if val > current.val && current.right.nil?
                count += 1
            end
       end
       count - 1
    end
end


def bstDistance(values, n, node1, node2)

    t = BST.new
    values.each do |value| #create a tree using values
       t.insert(value)
    end
    lca = t.lowest_common_ancestor(values[0],node1, node2) #find lowest common ancestor of our nodes
    left_distance = t.find(lca, node1)
    right_distance = t.find(lca, node2)
    if left_distance==false || right_distance==false
      return -1
    else
      return left_distance + right_distance
    end
end

puts bstDistance([5,6,3,1,2,4],6, 2, 4)
puts bstDistance([5,7,5,3,1],5,7,20)
