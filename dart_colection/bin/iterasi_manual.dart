void main(){
  var names = ['Muhammad' , 'Raditya' , 'Putra'];
  var iterator = names.iterator;

  while (iterator.moveNext()) {
    print(iterator.current);
  }
}