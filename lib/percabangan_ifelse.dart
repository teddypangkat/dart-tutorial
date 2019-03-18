import 'dart:io';

main(){
  print("=== Login ===");
  stdout.write("Password: ");
  String password = stdin.readLineSync().trim();

  // cek password
  if(password == "hero123"){
    print("Login Berhasil");
  } else {
    print("Login gagal");
  }
}
