class Car{
  String? brand;
  String? model;
  int? year;
  double? milesDriven;
  static int numberOfCars=0;

  Car({this.brand,this.model,this.year,this.milesDriven}){
    numberOfCars++;
  }

  void drive(double miles){
    print("Drive $miles km.");
    double previousMiles = this.milesDriven??0;
    this.milesDriven = previousMiles + miles;
  }

  double getMilesDriven(){
    return milesDriven??0;
  }

  String getBrand(){
    return brand ?? "";
  }

  String getModel(){
    return model ?? "";
  }

  int getYear(){
    return year ?? 0;
  }

  int getAge(){
    int currentYear=DateTime.now().year;
    return  currentYear - getYear();
  }

}


void main(){

  // My Car Start
  Car myCar=new Car(brand: "BMW",model: "BMW i5 M60 xDrive",year: 2021,milesDriven: 0);

  Car xCar=myCar;
  print("My Car, Brand: ${xCar.getBrand()}, Model: ${xCar.getModel()}, Year: ${xCar.getYear()}, Age: ${xCar.getAge()} Year.");
  print("Miles Driven: ${xCar.getMilesDriven()} km.");

  // First Drive
  xCar.drive(55);
  print("Miles Driven: ${xCar.getMilesDriven()} km.");

  // 2nd Drive
  xCar.drive(22.25);
  print("Miles Driven: ${xCar.getMilesDriven()} km.");

  // My Car End

  print("====================================");

  // My Wife Car Start
  Car myWifeCar=new Car(brand: "Mercedes-Benz",model: "Mercedes-Benz",year: 2020,milesDriven: 0);

   xCar=myWifeCar;
  print("My Wife Car, Brand: ${xCar.getBrand()}, Model: ${xCar.getModel()}, Year: ${xCar.getYear()}, Age: ${xCar.getAge()} Year.");
  print("Miles Driven: ${xCar.getMilesDriven()} km.");

  // First Drive
  xCar.drive(35);
  print("Miles Driven: ${xCar.getMilesDriven()} km.");

  // 2nd Drive
  xCar.drive(45.25);
  print("Miles Driven: ${xCar.getMilesDriven()} km.");

  // My Wife Car End


  print("====================================");

  // My Sister Car Start
  Car mySisterCar=new Car(brand: "Lamborghini",model: "Revuelto",year: 2023,milesDriven: 0);

  xCar=mySisterCar;
  print("My Sister Car, Brand: ${xCar.getBrand()}, Model: ${xCar.getModel()}, Year: ${xCar.getYear()}, Age: ${xCar.getAge()} Year.");
  print("Miles Driven: ${xCar.getMilesDriven()} km.");

  // First Drive
  xCar.drive(45);
  print("Miles Driven: ${xCar.getMilesDriven()} km.");

  // 2nd Drive
  xCar.drive(65.25);
  print("Miles Driven: ${xCar.getMilesDriven()} km.");

  // My Sister Car End


  print("====================================");


  print("Number of Cars: ${Car.numberOfCars}");


}