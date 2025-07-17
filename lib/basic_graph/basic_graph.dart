class Graph {
  final Map<int, List<int>> _adjacencyList = {};

  void addVertex(int vertex) {
    _adjacencyList.putIfAbsent(vertex, () => []);
  }

  void addEdge(int v1, int v2) {
    _adjacencyList.putIfAbsent(v1, () => []);
    _adjacencyList.putIfAbsent(v2, () => []);
    _adjacencyList[v1]!.add(v2);
    _adjacencyList[v2]!.add(v1);
  }

  List<int> getNeighbors(int vertex) {
    return _adjacencyList[vertex] ?? [];
  }

  void printGraph() {
    _adjacencyList.forEach((key, value) {
      print('$key: ${value.join(", ")}');
    });
  }
}
