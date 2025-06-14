class Stack<T> {
  List<T> stack = [];

  void push(T value) {
    stack.add(value);
  }

  bool isEmpty() {
    return stack.isEmpty;
  }

  T? pop() {
    return isEmpty() ? null : stack.removeLast();
  }

  int size() {
    return stack.length;
  }

  void clear() {
    stack.clear();
  }

  T? peek() {
    return isEmpty() ? null : stack.last;
  }
}
