void main(){

  Set<int> numbers = {};
  var strings = <String>{};
  var doubles = <double>{};

  print(numbers);

  var names = <String>{
    'Malvin',
    'Malvin',
    'Wijaya',
    'Wijaya',
    'Lawi',
  };

  // names.add('Malvin');
  // names.add('Malvin');
  // names.add('Wijaya');
  // names.add('Wijaya');
  // names.add('Lawi');

  print(names);
  print(names.length);

  names.remove('Malvin');
  names.remove('Tidak Ada');
  print(names);
  print(names.length);

}