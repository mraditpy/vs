class Person{
  String name = "Muhammad";
  String? address;
  final String country = "Indonesia";

  Person(this.name, this.address);

  Person.withName(this.name);

  Person.withAddress(this.address);
}

void main() {
  var person = Person("Muhammad", "Kotabaru");
  print(person.name);
  print(person.address);

  var person2 = Person.withName("Dom");
  print(person.name);
  print(person2.address);

  var person3 = Person.withAddress("jakarta");
  print(person3.name);
  print(person3.address);
}