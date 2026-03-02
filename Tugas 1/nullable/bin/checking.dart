import 'package:nullable/nullable.dart' as nullable;
import 'dart:io';
void main(List<String> arguments) {
  // print('Hello world: ${nullable.calculate()}!');
  int a = 10;
  int b = 0;
  print(a == b);
  print(identical(a, b));

  String nama1 = "Agnes";
  String nama2 = "agnes";
  print(nama1 == nama2);
  print(identical(nama1, nama2));
}