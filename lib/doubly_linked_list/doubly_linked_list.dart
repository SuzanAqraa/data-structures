class DoublyNode<T> {
  T value;
  DoublyNode<T>? next;
  DoublyNode<T>? prev;

  DoublyNode(this.value);
}

class DoublyLinkedList<T> {
  DoublyNode<T>? head;
  DoublyNode<T>? tail;

  void append(T value) {
    final newNode = DoublyNode(value);
    if (tail == null) {
      head = tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  void printList() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}
