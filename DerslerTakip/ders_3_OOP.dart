main(List<String> args) {}

class Unternehmen {
  var ad;
  var _job;
  var _gehalt;

  Unternehmen() {
    print("Sirketimize Hosgeldiniz");
    print("Su alt klass'larda Nesne üretebilirsiniz:");
    print("angestellter");
    print("boss");
    print("**************");
  }

  get jobuSoyle {
    return this._job;
  }
  //*************************************

  cakmaMaasGetter() =>  this._gehalt;
  
  //*************************************

  get gehaltSoyle {
    return this._gehalt;
  }

  set meslekSec(newJob) {
    this._job = newJob;
    return this._job;
  }

  Unternehmen.angesteller(this.ad, [this._job, this._gehalt]) {
    print(this.ad);
  }

  Unternehmen.boss(this.ad, [this._job, this._gehalt]) {
    print(this.ad);
  }
}
