class Node<T> {
  T value;
  Node<T>? next;
  Node(this.value);
}

class StackLinkedList<T> {
  Node<T>? top;

  void push(T value) {
    final newNode = Node(value);
    newNode.next = top;
    top = newNode;
  }

  T? pop() {
    if (top == null) return null;
    final value = top!.value;
    top = top!.next;
    return value;
  }

  T? peek() => top?.value;
  bool get isEmpty => top == null;
}

void main() {
  final stack = StackLinkedList<double>();
  stack.push(1.1);
  stack.push(2.2);
  print("Top: ${stack.peek()}"); // 2.2
  print("Pop: ${stack.pop()}");  // 2.2
  print("Empty? ${stack.isEmpty}"); // false
}
