import 'package:dsa_dart/data_structures/heap/queue/queue.dart';

void main() {
  Queue<int> queue = Queue();
  queue.enqueue(1);
  // Enqueue elements
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  print("Size after enqueues: ${queue.size()}");

  // Front element
  print("Front element: ${queue.front()}");

  // Dequeue an element
  print("Dequeued element: ${queue.dequeue()}");
  print("Size after dequeue: ${queue.size()}");

  // Check if queue is empty
  print("Is the queue empty? ${queue.isEmpty()}");

  // Clear the queue
  queue.clear();
  print("Size after clearing: ${queue.size()}");
}
