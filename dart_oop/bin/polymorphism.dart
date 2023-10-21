class Employee {
  String name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void main() {
  Employee employee = Employee('Bibi');
  print(employee);

  employee = Manager('Dom');
  print(employee);

  employee = VicePresident('Dom');
  print(employee);
}
