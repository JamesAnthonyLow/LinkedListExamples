###Ruby
```ruby
class Node
  attr_accessor :next, :data
  def initialize data
    @data = data
    @next = nil
  end
end
```
###C
```c
#include <stdlib.h>
#include <stdio.h>

struct Node {
  int data;
  struct Node * next;
};

struct Node * newNode(int data)
{
  struct Node * n = malloc( sizeof( struct Node ) );
  if( ! n )
    fprintf(stderr, "Failed To Allocate Memory\n");

  n->data = data;
  n->next = NULL;

  return n;
}
```
