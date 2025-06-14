import 'package:dsa_dart/data_structures/list/linked_list/doubly_inked_list.dart';
import 'package:test/test.dart';

void main() {
  group('DoublyLinkedList', () {
    late DoublyLinkedList<int> list;

    setUp(() {
      list = DoublyLinkedList<int>();
    });

    test('insertAtHead and insertAtTail work correctly', () {
      list.insertAtHead(2);
      list.insertAtTail(3);
      list.insertAtHead(1);
      expect(list.getAt(0), equals(1));
      expect(list.getAt(1), equals(2));
      expect(list.getAt(2), equals(3));
    });

    test('insertAt works at specific index', () {
      list.insertAtTail(1);
      list.insertAtTail(3);
      list.insertAt(1, 2);
      expect(list.getAt(1), equals(2));
    });

    test('delete removes element', () {
      list.insertAtTail(1);
      list.insertAtTail(2);
      list.insertAtTail(3);
      expect(list.delete(2), isTrue);
      expect(list.contains(2), isFalse);
      expect(list.length(), equals(2));
    });

    test('getAt throws on out-of-bounds', () {
      expect(() => list.getAt(0), throwsRangeError);
    });

    test('contains returns correct result', () {
      list.insertAtTail(5);
      expect(list.contains(5), isTrue);
      expect(list.contains(99), isFalse);
    });

    test('length returns correct value', () {
      expect(list.length(), equals(0));
      list.insertAtTail(1);
      expect(list.length(), equals(1));
    });
  });
}
