import 'dart:io';

main(){
  print("~~~ Jadwal Belajar Harian ~~~");
  stdout.write("Input hari: ");
  String hari = stdin.readLineSync().trim().toLowerCase();

  String info;

  switch(hari){
    case "senin": {
      info = "Hari ini adalah hari $hari kita akan belajar pemograman JAVA";
      break;
    }
    case "selasa": {
      info = "Hari ini adalah hari $hari kita akan belajar pemograman PYTHON";
      break;
    }
    case "rabu": {
      info = "Hari ini adalah hari $hari kita akan belajar pemograman PHP";
      break;
    }
    case "kamis": {
      info = "Hari ini adalah hari $hari kita akan belajar pemograman VUE.JS";
      break;
    }
    case "jumat": {
      info = "Hari ini adalah hari $hari kita akan belajar pemograman FLUTTER";
      break;
    }
    case "sabtu": {
      info = "Hari ini adalah hari $hari kita libur istirahat dirumah";
      break;
    }
    case "minggu": {
      info = "Hari ini adalah hari $hari kita liburan";
      break;
    }
    default: {
      info = "Hari yang anda masukan salah!";
    }
  }

  print(info);
}