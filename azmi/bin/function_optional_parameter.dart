void sayHello(String firstName, [String middleName = '', String lastName = '']){
  print('Hello $firstName $middleName $lastName');
}

void main(){
  sayHello('Muhammad');
  sayHello('Muhammad', 'Azmi');
  sayHello('Muhammad', 'Azmi', 'Xavier');
}