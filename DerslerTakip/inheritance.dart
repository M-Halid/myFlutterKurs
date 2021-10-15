main(List<String> args) {
  Car i8 = E_car_Expensive(600);
  i8.Marke = "BMW";
  showCars(i8);
  //i8.engine();

  Car slk = N_Cabrio_car();
  slk.Marke = "Mercedes";
  showCars(slk);
  //print(slk.hasRoof);

  Car doblo = N_car();
  doblo.Marke = "Fiat";
  showCars(doblo);

  Car eUp = E_car(300);
  eUp.Marke = "Vw";
  showCars(eUp);
}

void showCars(Car car) {
  car.engine();
}

class Car {
  String Marke = "";
  bool hasDoors = true;
  bool hasRoof = true;
  Car() {
    print("its a Car");
  }
  void engine() {
    print("1,2,3 GASS! Goo $Marke!!");
  }
}

class E_car extends Car {
  E_car(int range) {
    print("its a E-Car with range of $range");
  }
  @override
  void engine() {
    print("Elektroo! GO Green $Marke!!");
  }
}

class E_car_Expensive extends E_car {
  E_car_Expensive(range) : super(range);
  @override
  void engine() {
    print("OMG it is $Marke expeeensivee! go slow");
    super.engine();
  }
}

class N_car extends Car {}

class N_Cabrio_car extends N_car {
  @override
  bool hasRoof = false;
  @override
  void engine() {
    print("UUU its Cool Here!!");
  }
}
