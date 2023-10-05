void main(){

  Map<String, String> map1 = {};
  var map2 = Map<String, String>();
  var map3 = <String, String>{};

  print(map1);

  var name = <String, String>{
    'first': 'Muhammad',
    'middle': 'Azmi',
    'last': 'Xavier',
  };

  // name['first'] = 'Muhammad';
  // name['middle'] = 'Azmi';
  // name['last'] = 'Xavier';

  print(name);
  print(name['first']);

  name['middle'] = 'Azmi';
  print(name);

  name.remove('last');
  print(name);

}