void main(){
  final names1 ={"Muhammad","Raditya","Putra"};
  final names2 ={"Muhammad","Raditya","Putra"};

  print(names1.union(names2));
  print(names1.intersection(names2));
  print(names1.difference(names2));
  print(names2.difference(names1));
}