void sayHello(String firstName, [String middleName = '', String lastName = '']){
  print('Hello $firstName $middleName $lastName');
}

void main(){
  sayHello('radit');
  sayHello('radit', 'Kurniawan');
  sayHello('radit', 'Kurniawan', 'Khannedy');
}