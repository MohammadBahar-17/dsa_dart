import 'package:dsa_dart/data_structures/list/linked_list/circular_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group('CircularLinkedList', () {
    test('Insert and verify cycle', () {
      final list = CircularLinkedList<int>();
      list.insert(1);
      list.insert(2);
      list.insert(3);

      final head = list.head;
      expect(head != null, true);
      expect(head!.next!.next!.next, equals(head));
    });

    test('Delete and ensure circular integrity', () {
      final list = CircularLinkedList<int>();
      list.insert(1);
      list.insert(2);
      list.insert(3);
      list.delete(2);

      expect(list.length(), 2);
      expect(list.contains(2), false);
      expect(list.head!.next!.next, equals(list.head));
    });

    test('Traversal stops correctly after one full loop', () {
      final list = CircularLinkedList<String>();
      list.insert('A');
      list.insert('B');
      list.insert('C');

      int count = 0;
      var node = list.head;
      do {
        count++;
        node = node!.next;
      } while (node != list.head);

      expect(count, list.length());
    });

    test('Length, contains, getAt correctness', () {
      final list = CircularLinkedList<String>();
      expect(list.length(), 0);
      list.insert('X');
      list.insert('Y');
      list.insert('Z');
      expect(list.length(), 3);
      expect(list.contains('Y'), true);
      expect(list.getAt(1), 'Y');
      expect(list.getAt(5), null);
    });

    test('Edge cases: empty, one-node, delete all', () {
      final list = CircularLinkedList<int>();

      expect(list.delete(10), false);
      list.insert(5);
      expect(list.length(), 1);
      expect(list.delete(5), true);
      expect(list.head, null);
    });
  });
}
