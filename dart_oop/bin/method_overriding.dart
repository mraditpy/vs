class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is Manager ${this.name}');
  }
}

class VicePresident extends Manager {
  void sayHello(String name) {
    print('Hello $name, my name is VP ${this.name}');
  }
}

class Clevel extends Manager {
  void sayHello(String name) {
    print('Hello $name, my name is Clevel ${this.name}');
  }
}

void main() {
  var manager = Manager();
  manager.name = "Muhammad";
  manager.sayHello('Dom');

  var vp = VicePresident();
  vp.name = "Dom";
  vp.sayHello('Fery');
}
