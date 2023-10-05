void sayHello(String name, String Function(String) filter){
  print('Hello ${filter(name)}');
}

void main(){

  sayHello('Muhammad Azmi Khannedy', (name){
    return name.toUpperCase();
  });

  sayHello('Muhammad Azmi Khannedy', (name) => name.toLowerCase());

  var upperFunction = (String name){
    return name.toUpperCase();
  };

  var lowerFunction = (String name) => name.toLowerCase();

  var result1 = upperFunction('Muhammad');
  print(result1);

  var result2 = lowerFunction('Muhammad');
  print(result2);

}