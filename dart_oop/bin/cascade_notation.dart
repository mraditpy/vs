
class User {
  String? username;
  String? name;
  String? email;
}

User? createUser(){
  return null;
}

void main(){
  //var user = User();
  //user.username = "Raditya";
  //user.name = "Raditya";
  //user.email = "Raditya@contoh.com";

  var user = User()
  ..username = "Raditya"
  ..name = "Muhammad Raditya Putra Yuwono"
  ..email = "Raditya@contoh.com";

  User? user2 = createUser()
  ?..username = "Raditya"
  ..name = "Muhammad Raditya Putra Yuwono"
  ..email = "Raditya@contoh.com";

  print(user.username);
  print(user.name);
  print(user.email);
}