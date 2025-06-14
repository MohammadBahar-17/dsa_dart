class Node<T> {
  T data;
  Node<T>? prev;
  Node<T>? next;

  Node(this.data);
}

class DoublyLinkedList<T> {
  Node<T>? head;
  Node<T>? tail;
  int size = 0;

  void insertAtHead(T data) {
    Node<T> newNode = Node<T>(data);
    if (head == null) {
      head = tail = newNode;
    } else {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
    size++;
  }

  void insertAtTail(T data) {
    Node<T> newNode = Node<T>(data);
    if (tail == null) {
      head = tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
    size++;
  }

  void insertAt(int index, T data) {
    if (index < 0 || index > size) {
      throw RangeError('Index out of range');
    }

    if (index == 0) {
      insertAtHead(data);
    } else if (index == size) {
      insertAtTail(data);
    } else {
      Node<T> newNode = Node<T>(data);
      Node<T> current = head!;
      for (var i = 0; i < index; i++) {
        current = current.next!;
      }
      newNode.prev = current.prev;
      newNode.next = current;
      current.prev!.next = newNode;
      current.prev = newNode;
      size++;
    }
  }

  bool delete(T data) {
    Node<T>? current = head;

    while (current != null) {
      if (current.data == data) {
        if (current == head) {
          head = head!.next;
          if (head != null) head!.prev = null;
        } else if (current == tail) {
          tail = tail!.prev;
          if (tail != null) tail!.next = null;
        } else {
          current.prev!.next = current.next;
          current.next!.prev = current.prev;
        }
        size--;
        return true;
      }
      current = current.next;
    }
    return false;
  }

  T? getAt(int index) {
    if (index < 0 || index >= size) {
      throw RangeError('Index out of range');
    }

    Node<T> current = head!;
    for (var i = 0; i < index; i++) {
      current = current.next!;
    }
    return current.data;
  }

  bool contains(T data) {
    Node<T>? current = head;
    while (current != null) {
      if (current.data == data) return true;
      current = current.next;
    }
    return false;
  }

  void printForward() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void printBackward() {
    Node<T>? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }

  int length() => size;
}
