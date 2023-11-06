import 'dart:collection';

void main(){
  final Map<String, String> person = {
    "firstName" : "Muhammad",
    "lastName" : "Putra"
  };

  final finalPerson = UnmodifiableMapView(person);
  print(finalPerson);

  // finalPerson['middleName']= 'Raditya'; ERROR
}