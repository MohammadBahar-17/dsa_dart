class CircularNode<T> {
  T data;
  CircularNode<T>? next;

  CircularNode(this.data);
}

class CircularLinkedList<T> {
  CircularNode<T>? head;

  void insert(T data) {
    final newNode = CircularNode<T>(data);
    if (head == null) {
      head = newNode;
      newNode.next = head;
      return;
    }
    var temp = head;
    while (temp!.next != head) {
      temp = temp.next;
    }
    temp.next = newNode;
    newNode.next = head;
  }

  bool delete(T data) {
    if (head == null) return false;

    var current = head;
    var prev = head;
    bool found = false;

    do {
      if (current!.data == data) {
        found = true;
        break;
      }
      prev = current;
      current = current.next;
    } while (current != head);

    if (!found) return false;

    if (current == head) {
      if (head!.next == head) {
        head = null;
      } else {
        var temp = head;
        while (temp!.next != head) {
          temp = temp.next;
        }
        temp.next = head!.next;
        head = head!.next;
      }
    } else {
      prev!.next = current!.next;
    }
    return true;
  }

  bool contains(T data) {
    if (head == null) return false;
    var temp = head;
    do {
      if (temp!.data == data) return true;
      temp = temp.next;
    } while (temp != head);
    return false;
  }

  T? getAt(int index) {
    if (head == null || index < 0) return null;
    var temp = head;
    int count = 0;
    do {
      if (count == index) return temp!.data;
      count++;
      temp = temp!.next;
    } while (temp != head);
    return null;
  }

  void printList() {
    if (head == null) {
      print('List is empty');
      return;
    }
    var temp = head;
    do {
      print(temp!.data);
      temp = temp.next;
    } while (temp != head);
  }

  int length() {
    if (head == null) return 0;
    var temp = head;
    int count = 0;
    do {
      count++;
      temp = temp!.next;
    } while (temp != head);
    return count;
  }
}
