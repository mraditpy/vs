void main(){

  var names = <String>['Muhammad', 'Azmi', 'Khannedy'];

  // for(var i = 0; i < names.length; i++){
  //   print(names[i]);
  // }

  for(var value in names){
    print(value);
  }

  var namesSet = <String>{'Muhammad', 'Azmi', 'Xavier'};
  for(var value in namesSet){
    print(value);
  }

}