class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value);
}

class QueueLinkedList<T> {
  Node<T>? front;
  Node<T>? rear;

  void enqueue(T value) {
    final node = Node<T>(value);
    if (rear == null) {
      front = rear = node;
    } else {
      rear!.next = node;
      rear = node;
    }
  }

  T? dequeue() {
    if (front == null) return null;
    final val = front!.value;
    front = front!.next;
    if (front == null) rear = null;
    return val;
  }

  bool isEmpty() => front == null;

  void printQueue() {
    Node<T>? current = front;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}
