class TreeNode<T> {
  T value;
  TreeNode<T>? left;
  TreeNode<T>? right;

  TreeNode(this.value);
}

class BinaryTree<T> {
  TreeNode<T>? root;

  void inorder(TreeNode<T>? node) {
    if (node == null) return;
    inorder(node.left);
    print(node.value);
    inorder(node.right);
  }

  void preorder(TreeNode<T>? node) {
    if (node == null) return;
    print(node.value);
    preorder(node.left);
    preorder(node.right);
  }

  void postorder(TreeNode<T>? node) {
    if (node == null) return;
    postorder(node.left);
    postorder(node.right);
    print(node.value);
  }
}
