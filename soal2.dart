void main() {
  // Data uji (Perintah 1)
  var mark1 = Person('Mark', 78, 1.69);
  var john1 = Person('John', 92, 1.95);

  var mark2 = Person('Mark', 95, 1.88);
  var john2 = Person('John', 85, 1.76);

  // Hitung BMI untuk Mark dan John
  mark1.calculateBMI();
  john1.calculateBMI();

  mark2.calculateBMI();
  john2.calculateBMI();

  //Perintah 3
  bool markHigherBMI1 = mark1.bmi > john1.bmi;
  bool markHigherBMI2 = mark2.bmi > john2.bmi;

  
  print('Data 1:');
  mark1.printBMI();
  john1.printBMI();
  print('Apakah BMI Mark lebih tinggi dari John? $markHigherBMI1');

  print('\nData 2:');
  mark2.printBMI();
  john2.printBMI();
  print('Apakah BMI Mark lebih tinggi dari John? $markHigherBMI2');
}

class Person {
  String name;
  double weight;
  double height;
  late double bmi; 

  Person(this.name, this.weight, this.height);

  //Perhitungan BMI(Perintah 2)
  void calculateBMI() {
    bmi = weight / (height * height);
  }

  void printBMI() {
    print('BMI $name: $bmi');
  }
}
