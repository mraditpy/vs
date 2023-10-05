void main(){

  Map<String, String> map1 = {};
  var map2 = Map<String, String>();
  var map3 = <String, String>{};

  print(map1);

  var name = <String, String>{
    'first': 'Malvin',
    'middle': 'Wijaya',
    'last': 'lawi',
  };

  // name['first'] = 'Eko';
  // name['middle'] = 'Kurniawan';
  // name['last'] = 'Khannedy';

  print(name);
  print(name['first']);

  name['middle'] = 'Wijaya';
  print(name);

  name.remove('last');
  print(name);

}