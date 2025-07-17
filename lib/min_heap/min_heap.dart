class MinHeap {
  List<int> _heap = [];

  int get size => _heap.length;

  void insert(int val) {
    _heap.add(val);
    _heapifyUp(_heap.length - 1);
  }

  int? peek() {
    if (_heap.isEmpty) return null;
    return _heap[0];
  }

  int? extractMin() {
    if (_heap.isEmpty) return null;
    int min = _heap[0];
    _heap[0] = _heap.last;
    _heap.removeLast();
    _heapifyDown(0);
    return min;
  }

  void _heapifyUp(int index) {
    while (index > 0) {
      int parent = (index - 1) ~/ 2;
      if (_heap[index] < _heap[parent]) {
        _swap(index, parent);
        index = parent;
      } else {
        break;
      }
    }
  }

  void _heapifyDown(int index) {
    int leftChild = 2 * index + 1;
    int rightChild = 2 * index + 2;
    int smallest = index;

    if (leftChild < _heap.length && _heap[leftChild] < _heap[smallest]) {
      smallest = leftChild;
    }

    if (rightChild < _heap.length && _heap[rightChild] < _heap[smallest]) {
      smallest = rightChild;
    }

    if (smallest != index) {
      _swap(index, smallest);
      _heapifyDown(smallest);
    }
  }

  void _swap(int i, int j) {
    int temp = _heap[i];
    _heap[i] = _heap[j];
    _heap[j] = temp;
  }
}
