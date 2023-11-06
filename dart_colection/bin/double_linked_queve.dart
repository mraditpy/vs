import 'dart:collection';

void main(){
  final queve = Queue<String>();

  queve.addLast("Muhammad");
  queve.addLast("Raditya");
  queve.addLast("Putra");

  print(queve.removeLast());
  print(queve.removeLast());
  print(queve.removeLast());

}