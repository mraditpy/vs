import 'dart:collection';

void main(){

  final scores = SplayTreeMap<String, int>((a, b) => b.compareTo(a));

  scores["Muhammad"] = 100;
  scores["Raditya"] = 100;
  scores["Putra"] = 100;
  scores["Yuwono"] = 100;
  scores["Arda"] = 100;
  scores["Guler"]= 100;
  scores["Alaba"]= 100;
  scores["Benzi"]= 100;

  print(scores);
}