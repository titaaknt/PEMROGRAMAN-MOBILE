import 'package:nullable/nullable.dart' as nullable;
import 'dart:io';
void main(List<String> arguments) {
   print("Masukkan nama anda : ");
  String? nama = stdin.readLineSync();
  if(nama != null && nama.isNotEmpty) {
    print("Nama anda adalah : ${nama}");
  } else {
    print("Nama anda adalah : Tidak Diketahui");
  } 
  String status = nama != null && nama.isNotEmpty ? nama : "Tidak Diketahui";
  print("Nama anda adalah : ${status}");
}