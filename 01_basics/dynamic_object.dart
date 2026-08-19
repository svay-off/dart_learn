/* присвоєння в змінну типу dynemic екземпляр класу, та виклик методу */
class Cat {
  void helloMaster() {
    print("Mew-w-w-w-w");
  }
}

void learnDynamicAndObject() {
  /* тип dynamic - це спеціальний тип даних, який фактично означає відмову від суворої типізації. 
    Коли ви оголошуєте змінну через dynamic, ви кажете компілятору: «Не перевіряй тип цієї змінної і дозволь мені записувати сюди все, що завгодно».
  */

  dynamic dynamicValue = 3;
  dynamicValue = 3.10;
  print(dynamicValue); // 3.10

  dynamicValue = 'ooo';
  print(dynamicValue); // 'ooo'

  dynamicValue = [3, 4, 6];
  print(dynamicValue); // [3, 4, 6]

  dynamicValue = null;
  print(dynamicValue); // null

  /* Дозволяє використовувати методи, і компілятор не свариться */
  dynamic dynamicValue2 = 3;
  // dynamicValue2.run(); // при компіляції Class 'int' has no instance method 'run'

  /* Використання класу та присвоєння його в змінну */

  dynamic dynamicValue3 = Cat();
  dynamicValue3.helloMaster(); // "Mew-w-w-w-w"

  //-------------------------------------------------------------------------------
  /* 
  тип Object - це базовий клас для всіх не-nullable типів у мові Dart. Це означає, що абсолютно кожен тип у Dart (будь то int, String, bool, ваші власні класи тощо) є спадкоємцем Object
  Коли ви оголошуєте змінну як Object, ви кажете компілятору: «Це точно якийсь об'єкт, але я поки не знаю його точного типу».
  */

  // Object myValue2 = 3; // для збереження null буде помилка
  Object? objValue2 = 3; // для збереження null буде помилка
  objValue2 = 3.10;
  print(objValue2); // 3.10

  objValue2 = 'ooo';
  print(objValue2); // 'ooo'

  objValue2 = [3, 4, 6];
  print(objValue2); // [3, 4, 6]

  objValue2 = null;
  print(objValue2); // null

  /* Заборона на використання методів якщо це Object */
  Object objValue3 = 3;
  // print(objValue2.run()); // error

  /* Доступні методи котрі заявлені в рамках типу */
  Object objValue4 = Cat();

  if (objValue4 is Cat) {
    // is оператор перевірки типу. Повертає true/false
    objValue4.helloMaster();
  }
}

void main(List<String> arguments) {
  learnDynamicAndObject();
}
