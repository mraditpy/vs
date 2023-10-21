class Person {
  String name = "Muhammad";
  String? address;
  final String country = "Indonesia";

  void sayHello(String paramName) {
    print("Hello $paramName, My Name is $name");
  }

  void hello() {
    print("Hello, my name is $name");
  }

  String getName() {
    return "Hello, my name is $name";
  }
}

extension SayGoodByeOnPerson on Person {
  void sayGoodBye(String paramName) {
    print("Good Bye $paramName, from $name");
  }
}

void main() {
  var person1 = Person();
  person1.name = "Muhammad Raditya Putra Yuwono";
  person1.address = "Kotabaru";
  // person1.country = "Japan"; tidak bisa mengubah final field

  print(person1.name);
  print(person1.address);
  print(person1.country);

  person1.sayHello("Dom");
  person1.hello();
  person1.sayGoodBye("Fery");

  Person person2 = Person();
  print(person2);
}
