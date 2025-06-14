// stack_test.dart
import 'package:dsa_dart/data_structures/heap/stack/stack.dart';
import 'package:test/test.dart';

void main() {
  group('Stack Tests', () {
    late Stack<int> stack;

    setUp(() {
      stack = Stack<int>();
    });

    test('Push and Pop Order', () {
      stack.push(1);
      stack.push(2);
      stack.push(3);

      expect(stack.pop(), equals(3));
      expect(stack.pop(), equals(2));
      expect(stack.pop(), equals(1));
    });

    test('Peek correctness', () {
      stack.push(42);
      expect(stack.peek(), equals(42));
      expect(stack.size(), equals(1));
    });

    test('Empty check before and after operations', () {
      expect(stack.isEmpty(), isTrue);

      stack.push(99);

      expect(stack.isEmpty(), isFalse);
    });

    test('Clear resets the stack', () {
      stack.push(5);
      stack.push(10);

      while (!stack.isEmpty()) {
        stack.pop();
      }

      expect(stack.isEmpty(), isTrue);
      expect(stack.size(), equals(0));
    });

    test('Pop from empty returns null', () {
      expect(stack.pop(), isNull);
    });

    test('Peek from empty returns null', () {
      expect(stack.peek(), isNull);
    });
  });
}
