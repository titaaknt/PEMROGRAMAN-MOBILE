import 'package:agnes/prak1.dart' as prak1;

void main(List<String> arguments) {
  //print('Hello world: ${prak1.calculate()}!');
  var name = " Agnes";
  var umur = 20;
  var tinggi = "159";
  var alamat = "Jl. Falmboyan Gg.04";
  var iseng = umur + int.parse(tinggi);
  print("Nama: $name");
  print("Umur: $umur");
  print("Alamat: $alamat");
  print("Hasil iseng: $iseng");
}
