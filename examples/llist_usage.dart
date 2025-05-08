import 'package:dsa_dart/data_structures/list/linked_list/linked_list.dart';

void main() {
  final list = LinkedList<int>();

  print('Initial list: $list');
  print('Initial length: ${list.length}');

  // Add elements
  list.add(10);
  print('After adding 10: $list');

  // Insert elements
  list.add(1);
  list.add(3);
  list.insert(1, 2);
  print('After inserting 2 at index 1: $list');

  // Remove elements
  final removed = list.removeAt(1);
  print('Removed element at index 1: $removed');
  print('After removal: $list');

  // Check if an element exists
  list.add(5);
  print('List contains 5: ${list.contains(5)}');
  print('List contains 6: ${list.contains(6)}');

  // Get index of an element
  list.add(7);
  list.add(8);
  print('Index of 8: ${list.indexOf(8)}');
  print('Index of 9: ${list.indexOf(9)}');

  // Clear the list
  list.clear();
  print('After clearing the list: $list');

  // Operator [] and []=
  list.add(1);
  list.add(2);
  list[1] = 20;
  print('After setting index 1 to 20: $list');

  // Operator +
  final list2 = LinkedList<int>();
  list.add(1);
  list.add(2);
  list2.add(3);
  list2.add(4);
  final combined = list + list2;
  print('Combined list: $combined');

  // Operator -
  list.add(1);
  list.add(2);
  list.add(3);
  final newList = list - 2;
  print('List after removing 2: $newList');

  // Anonymous function methods
  list.clear();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);

  // forEach
  final List<int> result = [];
  list.forEach((element) {
    result.add(element * 10);
  });
  print('Result after forEach: $result');

  // map
  final mapped = list.map((element) => element * 2);
  print('Mapped list: $mapped');

  // where
  final filtered = list.where((element) => element % 2 == 0);
  print('Filtered list (even numbers): $filtered');
}
