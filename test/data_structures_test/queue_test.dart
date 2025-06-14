import 'package:dsa_dart/data_structures/heap/queue/queue.dart';

import 'package:test/test.dart';

void main() {
  group('Queue', () {
    late Queue<int> queue;

    setUp(() {
      queue = Queue<int>();
    });

    test('enqueue/dequeue order', () {
      queue.enqueue(10);
      queue.enqueue(20);
      queue.enqueue(30);

      expect(queue.dequeue(), 10);
      expect(queue.dequeue(), 20);
      expect(queue.dequeue(), 30);
      expect(queue.dequeue(), null);
    });

    test('front access without removal', () {
      queue.enqueue(10);
      queue.enqueue(20);
      expect(queue.front(), 10);
      queue.dequeue();
      expect(queue.front(), 20);
    });

    test('edge case: dequeue on empty queue', () {
      expect(queue.dequeue(), null);
    });

    test('size tracking', () {
      queue.enqueue(10);
      queue.enqueue(20);
      expect(queue.size(), 2);
      queue.dequeue();
      expect(queue.size(), 1);
    });

    test('clear verification', () {
      queue.enqueue(10);
      queue.enqueue(20);
      queue.clear();
      expect(queue.size(), 0);
      expect(queue.isEmpty(), true);
    });
  });
}
