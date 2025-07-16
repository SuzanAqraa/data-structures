class QueueArray<T> {
  final List<T> _list = [];

  void enqueue(T value) {
    _list.add(value);
  }

  T? dequeue() {
    if (_list.isEmpty) return null;
    return _list.removeAt(0);
  }

  bool isEmpty() => _list.isEmpty;

  int size() => _list.length;

  void printQueue() => print(_list);
}
