class Person {
  String name = "Muhammad";
  String? address;
  final String country = "Indonesia";

  Person(this.name, this.address);
}

void main() {
  var person = Person("Muhammad", "Kotabaru");
  print(person.name);
  print(person.address);
}
