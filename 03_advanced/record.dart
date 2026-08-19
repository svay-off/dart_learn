void learnRecords() {
  /* Record - вбудований  тип даних, котрий дозволяє об'єднати кілька різних значень в один об'єкт */
  /* Оголошення Record */
  (int, String) myRecord = (10, "text");
  print(myRecord); // (10, text)
  print(myRecord.$1); // 10 // звертання до елементу
  print(myRecord.$2); // text

  /* вивід типу в Runtime */
  print(myRecord.runtimeType); // (int, String)

  /* Додаємо іменовані аргументи запису до тиу Record */
  var myRecord2 = (cost: 20, smile: "-_-"); // перший спосіб оголошення
  ({int cost, String smile}) myRecord3 = (
    cost: 20,
    smile: "-_-",
  ); // другий спосіб оголошення

  print(myRecord2); // (cost: 20, smile: -_-)
  print(myRecord2.cost); // 20. Тепер звертаємось по імені без "$".
  print(myRecord2.smile); // -_-

  /* змішування позиційного та іменованого формату аргументів */
  var myRecord4 = (3, 14, cost: 20, smile: "-_-", 25);
  // або
  (double, int, {int cost, String smile}) myRecord5 = (
    3.14,
    cost: 20,
    smile: "-_-",
    25,
  ); // спочатку оголошуються типи для позиційних, а далі для іменованих аргументів і не інакше
  print(myRecord5); // (3.14, 25, cost: 20, smile: -_-)

  /* звертання до змішаного формату */
  print(myRecord5.cost); // 20
  print(myRecord5.smile); // -_-
  print(myRecord5.$1); // 3.14 // не важливо як аргументи розташовані в Record. Звертання до них іде по черзі від 1 і далі
  print(myRecord5.$2); // 25

  /* Правильне оголошення типів для Record */
  // good
  (double, int, String, {int cost, String smile, String smile2}) myRecord6 = (
    3.14,
    cost: 20,
    smile: "-_-",
    25,
    smile2: "-_-",
    "text",
  );

  // bad
  /*   
  (double, {int cost, String smile}, int, {String smile2}, String) myRecord6 = (
    3.14,
    cost: 20,
    smile: "-_-",
    25,
    smile2: "-_-",
    "text",
  ); // отримаємо помилку
  */

  /* Також оголошення типів повинні іти так як аргументи передані до Record */
  // good
  ({int cost, String text}) myRecord7 = (cost: 20, text: "text");
  (int, String) myRecord8 = (20, "text");

  //bad
  // (String, int) myRecord8 = (20, "text");

  /* Перевірка на рівність */
  var myRecord9 = (20, "text");
  var myRecord10 = (20, "text");
  print(myRecord9 == myRecord10); // true

  ({int cost, String text}) myRecord11 = (cost: 20, text: "text");
  ({int cost, String text}) myRecord12 = (cost: 20, text: "text");
  print(myRecord9 == myRecord10); // true

  print(myRecord9 == myRecord11); // false. є різні за форматом

  /* Деструктуризація Record */
  // Спосіб 1
  var (cost, text) = myRecord10;
  print('$cost + $text'); // 20 + text
  // Спосіб 2
  (int, String, {int price, String title, bool availability}) shop = (
    5,
    price: 20,
    title: "Mango",
    availability: true,
    "one more text",
  );

  var (
    yearsOfOpened,
    banner,
    price: productPrice,
    title: productTitle,
    availability: productAvailability,
  ) = shop;

  print('''
    Many years has been open: $yearsOfOpened,
    Bunner: $banner, 
    Product Name: $productTitle,
    Product Price: $productPrice,
    Product Availability: $productAvailability
  '''); /*  Many years has been open: 5,
    Bunner: one more text, 
    Product Name: Mango,
    Product Price: 20,
    Product Availability: true */
}

void main(List<String> arguments) {
  learnRecords();
}
