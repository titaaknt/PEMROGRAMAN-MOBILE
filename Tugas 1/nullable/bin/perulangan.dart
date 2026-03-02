import 'package:nullable/nullable.dart' as nullable;
import 'dart:io';
void main(List<String> arguments) {
  // print('Hello world: ${nullable.calculate()}!');
  int i = 0;
  // while (i == 5) {
  // print("Perulangan ke ${i + 1}");
  // i++;
  // }
  // do {
   // print("Perulangan ke ${i + 1}");
    // i++;
  // } while ( i < 5 );

  for (;;) {
    if (i == 5) {
      break;
    }
    print("Perulangan");
    i++;
  }
  for (int j = 1; j < 10; j++) {
    if (j % 2 == 0) {
      continue;
    }
    print(j);
  }
}