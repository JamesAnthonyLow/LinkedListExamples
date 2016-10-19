class Node
  attr_accessor :next, :data
  def initialize data
    @data = data
    @next = nil
  end
  def to_s
    "Node( #{@data} ) -> #{@next ? @next : "NULL"}"
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
  def appendToHead node
    node.next = @head
    @head = node
  end
  def to_s
    "#{@head}"
  end
end

l = LinkedList.new

l.appendToHead(Node.new(1))
l.appendToHead(Node.new(2))
l.appendToHead(Node.new(3))
l.appendToHead(Node.new(4))

puts l
