
void sayHello({required String firstName, String lastName = 'Default'}){
  print('Hello $firstName $lastName');
}

void main(){

  sayHello(firstName: 'Malvin');
  sayHello(firstName: 'Malvin');
  sayHello(lastName: 'Lawi', firstName: 'Malvin');
  sayHello(lastName: 'Lawi', firstName: 'Malvin');

}