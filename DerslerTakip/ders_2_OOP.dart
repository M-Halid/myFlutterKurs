main(List<String> args) {
  MyClass halid = MyClass.ogrenci("halido", 26, "Prgrmr");
  MyClass memet = MyClass.ogrenci("memet", 40, "elktro");
  MyClass murad = MyClass.ogrenci("murad", 27, "tacir");
  MyClass.ogrenci("asd",5,3);

  halid.yazdir();
  MyClass newHoca = MyClass.ogretmen("Nurten");
  newHoca.yazdir();

  MyClass yeni = MyClass.factoryDene(6);
  //print(yeni.ad);
}

class MyClass {
  var ad;
  var yas;
  var job;

  MyClass() {
    print(
        "Sinifa Hosgeldiniz Lütfen Ögrenci yada Ogretmen Seklinde Nesneler Olusturunuz.");
  }

  MyClass.ogrenci([this.ad, this.yas, this.job]) {
    print("${this.ad} adinda ${this.yas} yasinda ${this.job} isindedir HA!");
    print("Aramiza Hosgeldin ${this.ad}");
  }

  MyClass.ogretmen(this.ad) {
    print("Aramiza Hosgeldiniz ${this.ad} Hocam");
  }

  factory MyClass.factoryDene(ad) {
    return MyClass.ogrenci(ad, 3, 1);
  }
  void yazdir() {
    print("${ad} ${yas} ${job}");
  }
}
