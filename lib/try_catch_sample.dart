main() {
  int x = 12;
  int y = 0;
  int res;

  try {
    res = x ~/ y;
  }
  on IntegerDivisionByZeroException {
    print('Tidak dapat membagi dengan nol');
  }
  finally {
    print('Akhirnya blok dieksekusi');
  }
}