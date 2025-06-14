import 'package:dsa_dart/data_structures/heap/stack/stack.dart';

void main() {
  Stack<int> stack = Stack();

  stack.push(10);
  stack.push(20);
  stack.push(30);
  print("Size after pushes: ${stack.size()}");

  print("Top element (peek): ${stack.peek()}");

  print("Popped element: ${stack.pop()}");
  print("Size after pop: ${stack.size()}");

  print("Is the stack empty? ${stack.isEmpty()}");

  stack.clear();
  print("Size after clearing: ${stack.size()}");
}
