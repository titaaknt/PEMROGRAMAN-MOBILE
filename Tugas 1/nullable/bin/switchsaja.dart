import 'package:nullable/nullable.dart' as nullable;
import 'dart:io';
void main(List<String> arguments) {
  print("Masukkan nama anda : ");
  String? nama = stdin.readLineSync();
  switch (nama) {
    case null:
    case "":
      print("Nama anda adalah : Tidak Diketahui");
      break;
    default:
      print("Nama anda adalah : ${nama}");
  }
}