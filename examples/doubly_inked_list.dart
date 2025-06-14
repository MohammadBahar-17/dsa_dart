import 'package:dsa_dart/data_structures/list/linked_list/doubly_inked_list.dart';

void main() {
  final list = DoublyLinkedList<int>();

  print("Inserting at head:");
  list.insertAtHead(3);
  list.insertAtHead(2);
  list.insertAtHead(1);

  print("Inserting at tail:");
  list.insertAtTail(4);
  list.insertAtTail(5);

  print("Insert at index 2:");
  list.insertAt(2, 99); // List should now be: 1, 2, 99, 3, 4, 5

  print("\nList Forward:");
  list.printForward();

  print("\nList Backward:");
  list.printBackward();

  print("\nDeleting 99:");
  list.delete(99);

  print("Contains 3? ${list.contains(3)}");
  print("Element at index 2: ${list.getAt(2)}");
  print("Length: ${list.length()}");

  print("\nFinal List Forward:");
  list.printForward();
}
