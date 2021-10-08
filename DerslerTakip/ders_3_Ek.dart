import 'dart:math';

import 'ders_3_OOP.dart';

main(List<String> args) {
  /*Unternehmen H_S = Unternehmen();
  Unternehmen Halid = Unternehmen.boss("Halid", "BigGuy", 8500);
  Halid.ad;
  Unternehmen lara = Unternehmen.angesteller("Lara", "Kunde dings", 3000);
  lara.ad; */
/* 
  print(lara.jobuSoyle);
  lara.meslekSec = "Sekreter";
  print(lara.jobuSoyle);
  print(Halid.gehaltSoyle);
  print(Halid.cakmaMaasGetter()); */
  print("********************************");
  CemberDaire cemb1 = CemberDaire();
  CemberDaire cemb2 = CemberDaire();
  cemb1.cevreHesapla = 6;
  cemb1.alanHesapla = 6;
  print(cemb1.alan);
  print(cemb1.cevre);

  Set tumDalebeler = {};

  for (var i = 0; i < 100; i++) {
    int id = Random().nextInt(150);
    int note = Random().nextInt(150);
    Students Ali = Students.dalebeler(id, note);
    Map dalebe = Map();
    dalebe[id] = note;
    tumDalebeler.add(dalebe);
  }
  for (var dalebe in tumDalebeler) {
    //print(dalebe);
  }
  print(tumDalebeler.length);
}

class Students {
  var id;
  var note;
  var sayac = 0;

  Students(this.id, this.note) {
    //print("Student Id:${this.id}  Student Note:${this.note}");
  }

  factory Students.dalebeler(int idsi, notu) {
    return Students(idsi, notu);
  }
}

class CemberDaire {
  int _r = 0;
  double _cevre = 0;
  double _alan = 0;

  CemberDaire() {}

  set cevreHesapla(yaricap) {
    this._r = yaricap;
    var cevre = 2 * (3.14) * this._r;
    this._cevre = cevre;
  }

  get cevre => this._cevre;

  set alanHesapla(yaricap) {
    this._r = yaricap;
    this._alan = (3.14) * this._r * this._r;
  }

  get alan => this._alan;
}
