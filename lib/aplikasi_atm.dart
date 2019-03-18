import 'dart:io';

void main() {
  print("==== APLIKASI ATM ====");

  print("LOGIN");
  login();
}

List<User> listDataUser = [
  new User("TEDDY", "111", 1000, "111-1"),
  new User("DAFFA", "222", 2000, "222-2"),
  new User("RIFA", "333", 3000, "333-3"),
  new User("SETIA", "444", 4000, "444-4")
];
User dataUser;

void login() {
  if (validPin()) {
    menuUtama();
  } else {
    print("Login gagal pin tidak valid, silahkan masukan pin kembali");
    main();
  }
}

bool validPin() {
  bool isValid = false;
  stdout.write("PIN : ");
  String pin = stdin.readLineSync();

  for (User user in listDataUser) {
    if (pin == user.getPin()) {
      isValid = true;
      dataUser = user;
    }
  }

  return isValid;
}

void menuUtama() {
  var nama = dataUser.getNama();
  print("=== MENU UTAMA ====");
  print(""
      ""
      ""
      "SER : $nama");
  print(
      "1 -> PENARIKAN");
  print("2 -> TRANSFER");
  print("3 -> CEK SALDO");

  stdout.write("MASUKAN ANGKA : ");
  String angkaPilihan = stdin.readLineSync();

  switch (angkaPilihan) {
    case "1":
      {
        penarikan();
      }

      break;
    case "2":
      {
        transfer();
      }

      break;
    case "3":
      {
        cekSaldo();
      }

      break;
    case "4":
      {
        cekSaldo();
      }
      break;
    default:
      {
        print("KESALAHAN INPUT");
        menuUtama();
      }
  }
}

void penarikan() {
  print('=== PENARIKAN ===');
  stdout.write("NOMINAL :");
  double nominal = double.tryParse(stdin.readLineSync());

  if (dataUser.getSaldo() > nominal) {
    print("PENARIKAN BERHASIL");
    updateSaldo(dataUser, nominal);
  } else {
    print("PENARIKAN GAGAL,SALDO TIDAK CUKUP");
  }

  menuUtama();
}

void transfer() {
  print('=== TRANSFER===');
  bool isNorekValid = false;
  bool isSaldoValid = false;
  String namaTf;
  stdout.write("NO REK :");
  String norek = stdin.readLineSync();

  stdout.write("NOMINAL :");
  double nominal = double.tryParse(stdin.readLineSync());

  //validasi no rek dan nominal
  for (User user in listDataUser) {
    //cek no rek sendiri
    if (norek != dataUser.getNoRek()) {
      if (norek == user.getNoRek()) {
        namaTf = user.getNama();
        isNorekValid = true;

        if (dataUser.getSaldo() > nominal) {
          isSaldoValid = true;
        }
      }
    }
  }

  if (isNorekValid) {
    if (isSaldoValid) {
      print("TRANSFER BERHASIL a/n $namaTf");
      updateSaldo(dataUser, nominal);
    } else {
      print("SALDO TIDAK CUKUP");
    }
  } else {
    print("NO REK TIDAK ADA");
  }

  menuUtama();
}

void cekSaldo() {
  print('=== CEK SALDO ===');
  if (validPin()) {
    double saldo = dataUser.getSaldo();
    print("SALDO ANDA: $saldo");
  }

  menuUtama();
}

void updateSaldo(User user, double nom) {
  double currentSaldo = user.getSaldo() - nom;
  user.setSaldo(currentSaldo);
}

class User {
  String nama;
  String pin;
  double saldo;
  String noRek;

  User(this.nama, this.pin, this.saldo, this.noRek);

  void setSaldo(double saldo) {
    this.saldo = saldo;
  }

  String getNama() {
    return this.nama;
  }

  String getPin() {
    return this.pin;
  }

  double getSaldo() {
    return this.saldo;
  }

  String getNoRek() {
    return this.noRek;
  }
}
