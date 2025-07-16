class DynamicArray<T> {
  List<T?> _data = List.filled(2, null);
  int _size = 0;

  void add(T value) {
    if (_size == _data.length) {
      _resize();
    }
    _data[_size] = value;
    _size++;
  }

  void _resize() {
    List<T?> newData = List.filled(_data.length * 2, null);
    for (int i = 0; i < _size; i++) {
      newData[i] = _data[i];
    }
    _data = newData;
  }

  T? get(int index) => (index < _size) ? _data[index] : null;

  int get size => _size;
}

void main() {
  final list = DynamicArray<int>();
  list.add(10);
  list.add(20);
  list.add(30);
  print("Element at index 1: ${list.get(1)}"); // 20
  print("Size: ${list.size}"); // 3
}
