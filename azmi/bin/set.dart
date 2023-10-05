void main(){

  Set<int> numbers = {};
  var strings = <String>{};
  var doubles = <double>{};

  print(numbers);

  var names = <String>{
    'Muhammad',
    'Muhammad',
    'Azmi',
    'Azmi',
    'Xavier',
  };

  // names.add('Muhammad');
  // names.add('Muhammad');
  // names.add('Azmi');
  // names.add('Azmi');
  // names.add('Xavier');

  print(names);
  print(names.length);

  names.remove('Muhammad');
  names.remove('Tidak Ada');
  print(names);
  print(names.length);

}