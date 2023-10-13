/*
* Taylor Ramirez-Rodriguez
* Hybrid App 2
* 2023-September-26
*
*/

import 'dart:io';
import 'dart:math';

class Lucky {
  late int number;

  Lucky() {
    String? minStr = Platform.environment['MIN'];
    String? maxStr = Platform.environment['MAX'];

    int? min = (minStr != null) ? int.parse(minStr) : 0;
    int? max = (maxStr != null) ? int.parse(maxStr) : 0;

    if (minStr == null || maxStr == null) {
      print(
          "\nOh no!! You didn't set the MIN and MAX environment variables. Shame on you!\n");
      exit(1);
    }

    Random random = Random();

    number = random.nextInt(max - min) + min;
  }
}
