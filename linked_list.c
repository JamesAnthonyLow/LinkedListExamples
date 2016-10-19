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

void printList(struct Node * head)
{
  if( ! head ) {
    printf("NULL\n");
    return;
  }
  printf("Node( %d ) -> ", head->data);
  printList( head->next );
}

int main(){
  struct Node * head;

  head = appendToTail(NULL, newNode(1));
  head = appendToTail(head, newNode(2));
  head = appendToTail(head, newNode(3));
  head = appendToTail(head, newNode(4));
  printList(head);
}
