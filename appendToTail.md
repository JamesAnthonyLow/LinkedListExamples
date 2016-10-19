```ruby
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
```

```c
struct Node * appendToTail(struct Node * head, struct Node * n)
{
  struct Node * curr;

  if( ! head )
    return head = n;

  curr = head;
  while( curr->next )
    curr = curr->next;
  curr->next = n;
  return head;
}
```
