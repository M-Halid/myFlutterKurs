import 'dart:io';

import 'dart:math';

void main(List<String> args) {
  /*  var ilkSelam = "Selamün Aleyküm";
  var cevapSelam = "Aleyküm Selam";
  var sayi1 = 88;
  var sayi2 = 97;
  sayi1 < sayi2 ? print("$ilkSelam $cevapSelam") : null;

  for (int i = 1; i <= 3;) {
    stdout.write("HI$i ");
    i++;
  }
  print("ad gir");
  String? isim = stdin.readLineSync();
  stdout.write("ad:$isim\n");

  print("Ürün Fiyat Gir");
  int fiyat = int.parse(stdin.readLineSync()!);
  print("Yeni Fiyat:${fiyat + (fiyat * 18) / 100}"); */

  //int getV = volume(10, 15, 20);
/*   int a, b;
  a = 6;
  b = 8;
  print(a * b);
  int hipo = hypotenus(b:6, a:8); */
  // print(minMax(-5, -2));
  //print(hypotenus(b: 2,a:8));
  //int sr1 = soru1(11);
  // print(sr1);
  /* print(sayiAl(5, 0));

  List asd = List.filled(5, 1);

  asd[0] = 9;
  asd[1] = 8;
  asd[4] = "asd";

  for (var i = 0; i < asd.length; i++) {
    print(asd[i]);
  }

  for (var i in asd) {
    print("$i\1");
  } */
/* 
  List buyuyen = [];
  List list2 = List.empty(growable: true);
  List list3 = List.filled(0, 0, growable: true);
  buyuyen.add(63);
  buyuyen[0] = 1;
  list3.add(64);
  list3.add(64);
  list3.add(64);
  list3[1] = 4;
  list2.add(65);
  list2.add(65);
  list2[0] = 4;
  print("$buyuyen, $list3, $list2 ");

  List basic = [];
  String dene = (asd).toString();
  asd.shuffle();

  print(asd); */

  /* List asd = [1, 3, 4, "asd"];
  asd.addAll([2,1,3,6,8,4]);
  print(asd);
  Set deneme = Set();
  deneme.addAll(asd);
  deneme.remove("asd");
  print(deneme);
 */
  /* Map dene1 = {"ali": 123};
  Map dene2 = {"alim": 123};
  Map son1 = {...dene1, ...dene2};
  print(son1); */
  /* print(alinan5);
  print(alinan4);
  print(alinan3);
  print(alinan2);
  print(alinan1); */

  /* Map ilkMap = {};
  ilkMap.addAll({"halid": "ogrenci", "yasin": "calisan", 46: "yas"});
  ilkMap[34] = "Halidin yasi"; */
  //print(ilkMap.toString());

  //for (var item in ilkMap.entries) {
  //print("${item.key}: ${item.value}");
  //}

  /*  for (var item in alles) {
    print("${item["Name"]} ${item["City"]} ${item["Hobby"]}");
  }
 */

/* 
  Map<String, dynamic> plaka1 = {"City": "Ankara", "Plaka": 06};
  Map<String, dynamic> plaka2 = {"City": "Istanbul", "Plaka": 34};
  Map<String, dynamic> plaka3 = {"City": "Sakarya", "Plaka": 54};
  Map<String, dynamic> plaka4 = {"City": "Samsun", "Plaka": 55};

  List iller = [plaka1, plaka2, plaka3, plaka4];

  for (var il in iller) {
   // print("${il["City"]} Ilinin Plakasi ${il["Plaka"]}");
  } */
/*   var alinan1 = yolla("Mehen", "Corum", "Fish");
  //print(dizi);
  var alinan2 = yolla("Cwemil", "Kars", "IT");
  //print(dizi);
  var alinan3 = yolla("Uzun", "Bulgar", "Cocuh");
  //print(dizi);
  var alinan4 = yolla("Söför", "Kadikoy", "Komsu");
  //print(dizi);
  var alinan5 = yolla("Sipa", "Stutt", "Devre");
  //print(dizi);
  var alinan6 = yolla("Sipali");
  var alinan7 = yolla();
  //print(dizi[6]["City"]);
  print("*********");
  //print(dizi);

  List rand1 = [];
  List rand2 = [];
  for (var i = 0; i < 5; i++) {
    rand1.add(new Random().nextInt(50));
    rand2.add(new Random().nextInt(50));
  }
  print(rand1);
  print(rand2);
  List rands = [];

  rands = [...rand1, ...rand2];
  /*  rands.addAll(rand1);
  rands.addAll(rand2); */
  print(rands);
  Set son = {};
  for (var item in rands) {
    item = item * item;
    son.add(item);
  } */
  //print(son);

  List<int?> tumSayi = [];

  print("rumuz vir");
  var user = stdin.readLineSync();
  print("Selam $user");
  while (true) {
    print("sayi vir");
    int sayi = int.parse(stdin.readLineSync()!);
    if (sayi == -1 || sayi == "") {
      break;
    }
    tumSayi.add(sayi);
  }
  double sonuc = 0;
  int toplam = 0;
  for (var item in tumSayi) {
    toplam += item!;
    sonuc = toplam / tumSayi.length;
  }
  print(tumSayi);
  print(sonuc);
}

List<Map<String, dynamic>> dizi = [];
List yolla([name, city, hobby]) {
  Map<String, dynamic> bilgiler = {};
  bilgiler["Name"] = name;
  bilgiler["City"] = city;
  bilgiler["Hobby"] = hobby;
  dizi.add(bilgiler);
  return dizi;
}





















/* int soru1(int a) {
  var toplam = 0;
  if (a % 2 == 0) {
    while (a > 0) {
      a = a - 2;
      toplam += a;
    }
  } else if (a % 2 == 1) {
    a -= 1;
    while (a > 0) {
      toplam += a;
      a = a - 2;
    }
  } else {
    print("Falsche Angabe");
  }
  return toplam;
}

sayiAl(s1, s2) {
  List diziAdd = List.filled(s1, s2);
  return diziAdd;
}
 */

/* void volume(int x, int y, int z) {
  var volume = x * y * z;
  print(volume);
} */

//int hypotenus({int a = 0, int b = 0}) => a * a + b * b;


//int minMax(z, t) => (z > t) ? t : z;

