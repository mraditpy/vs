
void sayHello({required String firstName, String lastName = 'Default'}){
  print('Hello $firstName $lastName');
}

void main(){

  sayHello(firstName: 'Muhammad');
  sayHello(firstName: 'Muhammad');
  sayHello(lastName: 'Azmi', firstName: 'Xavier');
  sayHello(lastName: 'Azmi', firstName: 'Xavier');

}