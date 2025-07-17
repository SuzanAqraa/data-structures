class HashNode<K, V> {
  K key;
  V value;
  HashNode<K, V>? next;

  HashNode(this.key, this.value);
}

class HashTable<K, V> {
  final int _capacity;
  late List<HashNode<K, V>?> _buckets;

  HashTable([this._capacity = 16]) {
    _buckets = List<HashNode<K, V>?>.filled(_capacity, null);
  }

  int _hash(K key) {
    return key.hashCode % _capacity;
  }

  void put(K key, V value) {
    int index = _hash(key);
    var head = _buckets[index];

    while (head != null) {
      if (head.key == key) {
        head.value = value;
        return;
      }
      head = head.next;
    }

    var newNode = HashNode(key, value);
    newNode.next = _buckets[index];
    _buckets[index] = newNode;
  }

  V? get(K key) {
    int index = _hash(key);
    var head = _buckets[index];

    while (head != null) {
      if (head.key == key) {
        return head.value;
      }
      head = head.next;
    }
    return null;
  }

  bool containsKey(K key) {
    return get(key) != null;
  }

  void remove(K key) {
    int index = _hash(key);
    var head = _buckets[index];
    HashNode<K, V>? prev;

    while (head != null) {
      if (head.key == key) {
        if (prev == null) {
          _buckets[index] = head.next;
        } else {
          prev.next = head.next;
        }
        return;
      }
      prev = head;
      head = head.next;
    }
  }
}
