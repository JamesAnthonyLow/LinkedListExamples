###Ruby
```ruby
  def appendToHead node
    node.next = @head
    @head = node
  end
```
###C
```c
struct Node * appendToHead(struct Node * head, struct Node * n)
{
  n->next = head;
  return n;
}
```
