import 'package:nullable/nullable.dart' as nullable;
import 'dart:io';
void main(List<String> arguments) {
  // print('Hello world: ${nullable.calculate()}!');
  // String? name;
  // name = null;
  // print(name);
  // int? a;
  // a = 10;
  // print(a);
  // String? nama;
  // nama = null;
  // print("Nama saya ${nama ?? 'Tidak Diketahui'}");
  print("Masukkan nama anda : ");
  String? nama = stdin.readLineSync();
  print("Nama anda adalah : ${nama == null || nama.isEmpty ? 'Tidak Diketahui' : nama }"
  );
}
