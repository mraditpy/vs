void main(){

  final Map<String, String> person = {
    "firstName" : "Muhammad",
    "lastName" : "Putra"
  };

  print(person);
  print(person["firstName"]);

  person["middleName"] = "Raditya";
  print(person);
}