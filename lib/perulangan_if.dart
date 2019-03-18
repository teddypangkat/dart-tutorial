import 'dart:io';

void main(){
  print("### Program Belanja ###");
  stdout.write("Total pembelian: ");
  int totalPembelian = int.parse(stdin.readLineSync());

  if( totalPembelian >= 50000 ){
    print("Selamat anda mendapatkan diskon 10%");
  }
}