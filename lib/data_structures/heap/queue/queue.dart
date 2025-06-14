class Queue<T> {
  List<T> queue = [];

  void enqueue(T data) {
    queue.add(data);
  }

  T? dequeue() {
    return isEmpty() ? null : queue.removeAt(0);
  }

  T? front() {
    return isEmpty() ? null : queue.first;
  }

  bool isEmpty() {
    return queue.isEmpty;
  }

  int size() {
    return queue.length;
  }

  void clear() {
    queue.clear();
  }
}
