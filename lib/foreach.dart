import 'dart:io';

main() {
  var languages = ["C", "C++", "Java", "Dart", "Javascript", "PHP", "PASCAL"];

  for(var language in languages){
    print(language);
  }

  print("Total bahasa: ${languages.length}");


}