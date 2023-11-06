void main(){
  final Map<String, String> person = {
    "firstName" : "Muhammad",
    "lastName" : "Putra"
  };
  for(var entry in person.entries){
    print('${entry.key} : ${entry.value}');
  }
}