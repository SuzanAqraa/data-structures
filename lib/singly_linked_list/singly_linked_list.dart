class Node<T> {
  T value;
  Node<T>? next;
  Node(this.value);
}

class SinglyLinkedList<T> {
  Node<T>? head;

  void append(T value) {
    if (head == null) {
      head = Node(value);
    } else {
      Node<T> current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(value);
    }
  }

  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  final list = SinglyLinkedList<int>();
  list.append(5);
  list.append(15);
  list.append(25);
  list.printList();
}
