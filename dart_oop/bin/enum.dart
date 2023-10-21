import 'data/customer.dart';

void main() {
  var customer = Customer('Dom', CustomerLevel.vip);
  print(customer.name);
  print(customer.level);

  print(CustomerLevel.values);
}
