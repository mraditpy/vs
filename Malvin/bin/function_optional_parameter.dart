void sayHello(String firstName, [String middleName = '', String lastName = '']){
  print('Hello $firstName $middleName $lastName');
}

void main(){
  sayHello('Malvin');
  sayHello('Malvin', 'Wijaya');
  sayHello('Malvin ', 'Wijaya', 'Lawi');
}