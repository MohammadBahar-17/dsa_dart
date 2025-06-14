import 'package:dsa_dart/data_structures/list/linked_list/circular_linked_list.dart';

void main() {
  final list = CircularLinkedList<int>();

  list.insert(10);
  list.insert(20);
  list.insert(30);

  print('Circular List:');
  list.printList();

  print('Length: ${list.length()}');
  print('Contains 20: ${list.contains(20)}');
  print('Contains 50: ${list.contains(50)}');
  print('Element at index 1: ${list.getAt(1)}');

  print('\nDeleting 20...');
  list.delete(20);
  list.printList();
}
