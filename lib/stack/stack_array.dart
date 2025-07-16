class StackArray<T> {
  final List<T> _stack = [];

  void push(T value) => _stack.add(value);
  T pop() => _stack.removeLast();
  T peek() => _stack.last;
  bool get isEmpty => _stack.isEmpty;
}

void main() {
  final stack = StackArray<String>();
  stack.push("A");
  stack.push("B");
  print("Top: ${stack.peek()}");
  print("Pop: ${stack.pop()}");  
  print("Empty? ${stack.isEmpty}"); 
}
