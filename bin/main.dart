/*
* Taylor Ramirez-Rodriguez
* Hybrid App 2
* 2023-September-26
*
*/

import 'dart:io';

import 'package:hybrid_2/Luck.dart';

void main(List<String> args) {
  for (var name in args) {
    if (int.tryParse(name) != null || double.tryParse(name) != null) {
      print("Hey mate!! $name is not a name, it's a number. Elon is that you?");
      exit(1);
    }

    String formatedName = "${name[0].toUpperCase()}${name.substring(1)}";

    Lucky lucky = Lucky();

    print("Hello $formatedName!\n\tYour lucky number is ${lucky.number}.\n");
  }

  print("By Tay!");
}
