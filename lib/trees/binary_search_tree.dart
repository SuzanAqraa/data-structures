class TreeNode<T extends Comparable> {
  T value;
  TreeNode<T>? left;
  TreeNode<T>? right;

  TreeNode(this.value);
}

class BST<T extends Comparable> {
  TreeNode<T>? root;

  void insert(T value) {
    root = _insert(root, value);
  }

  TreeNode<T> _insert(TreeNode<T>? node, T value) {
    if (node == null) return TreeNode(value);

    if (value.compareTo(node.value) < 0) {
      node.left = _insert(node.left, value);
    } else {
      node.right = _insert(node.right, value);
    }
    return node;
  }

  void inorderTraversal() => _inorder(root);

  void _inorder(TreeNode<T>? node) {
    if (node == null) return;
    _inorder(node.left);
    print(node.value);
    _inorder(node.right);
  }
}
