class Node
  attr_accessor :next, :data
  def initialize data
    @data = data
    @next = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end
  def appendToTail node
    unless @head
      return @head = node
    end
    curr = @head
    while curr.next
      curr = curr.next
    end
    curr.next = node
  end
end

l = LinkedList.new

l.appendToTail(Node.new(1))
l.appendToTail(Node.new(2))
l.appendToTail(Node.new(3))
l.appendToTail(Node.new(4))

p l
