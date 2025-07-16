class CircularNode<T> {
  T value;
  CircularNode<T>? next;

  CircularNode(this.value);
}

class CircularLinkedList<T> {
  CircularNode<T>? head;

  void add(T value) {
    final node = CircularNode(value);
    if (head == null) {
      head = node;
      node.next = head;
    } else {
      CircularNode<T> current = head!;
      while (current.next != head) {
        current = current.next!;
      }
      current.next = node;
      node.next = head;
    }
  }

  void printList() {
    if (head == null) return;
    CircularNode<T>? current = head;
    do {
      print(current!.value);
      current = current.next;
    } while (current != head);
  }
}
