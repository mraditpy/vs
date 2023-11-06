import 'dart:collection';

void main(){
  final stack = Queue<String>();

  stack.addLast("Muhammad");
  stack.addLast("Raditya");
  stack.addLast("Putra");

  print(stack.removeLast());
  print(stack.removeLast());
  print(stack.removeLast());
  
}