class Person {
  String name = "Muhammad";
  String? address;
  final String country = "Indonesia";

  Person(String paramName, String paramAddress) {
    name = paramName;
    address = paramAddress;
  }
}

void sayHello(String paramName) {
  print("Hello $paramName, My Name is $paramName");
}

void main() {
  var person = Person("Muhammad", "Kotabaru");
  person.name = "Muhammad";
  print(person.name);
  print(person.address);
}
