class Node

attr_accessor :level, :parent, :lchild, :rchild, :ledge, :redge, :dead

  def initialize()
    @parent = Array.new
    @thread = Array.new
    $nodes.push(self) 
    @rchild = nil
    @lchild = nil
    @dead = false
  end

  def <=>(other)
    @level <=> other.level
  end

def bros()
  @parent.each do |nodes|
    if nodes.lchild && nodes.lchild != self
        if nodes.lchild.rchild
          @lchild = nodes.lchild.rchild
          @lchild.parent.push(self)
        end
    end
    if nodes.rchild  && nodes.rchild != self
        if nodes.rchild.lchild
          @rchild = nodes.rchild.lchild
          @rchild.parent.push(self)
        end
    end
  end
end

def create()
  node = Node.new
  node.parent.push(self)
  node.level = @level + 1
  return node
end


def add()
  if @level < 41
    if !@lchild
        @lchild = create()
        @lchild.bros()
        @lchild.add()
    end
    if !@rchild
        @rchild = create()
        @rchild.bros()
        @rchild.add()
    end
  end
end

end



def remove(node)

  node.dead = true
  if node.lchild
    remove(node.lchild)
  end
  if node.rchild
    remove(node.rchild)
  end

end

original = Array.new
@paths = Array.new()
@paths.push(original)

def traverse(node, path)

  path.push(node)

   if node.lchild && !node.lchild.dead && node.rchild && !node.rchild.dead
      traverse(node.rchild, path)
    newPath = path.dup
    @paths.push(newPath)
     #puts @paths.size
    traverse(node.lchild, newPath)
  elsif node.rchild && !node.rchild.dead
    traverse(node.rchild, path)
  elsif node.lchild && !node.lchild.dead
    traverse(node.rchild, path)
  end

end

$nodes = Array.new

root = Node.new
root.level = 0
root.add()

right = root
left = root

(1..21).each do | number |

right = right.rchild
left = left.rchild

end

remove(right)
remove(left)

$nodes.compact!
$nodes.uniq!
$nodes.sort!

$nodes.each do |node|
puts node.level
end

puts $nodes.size

traverse(root, original)

# @paths.compact!
# @paths.uniq!
puts @paths.size
