class Person {
  String name = "Muhammad";
  String? address;
  final String country = "Indonesia";

  Person(String name, String address) {
    name = name;
    address = address;
  }
}

void main() {
  var person = Person("Muhammad", "Kotabaru");
  print(person.name);
  print(person.address);
}
