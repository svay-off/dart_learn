import 'dart:io';

void boolean() {
  bool foo = true;

  /* Операції порівняння дають також булевий результат true/false */
  print(5 > 20); // false
  print(8 < 30); // true
  print(10 == 10); // true
  print(5 >= 5); // true

  /* && логічне і. Повертає true тільки коли всі умови true, в іншому випадку false */

  print(true && false); // false
  print(false && true); // false
  print(true && true); // true
  print(false && false); // false

  /* || логічне або. Повертає false тільки тоді коли всі false. Якщо хо один true, тоді true */

  print(true || false); // true
  print(false || true); // true
  print(true || true); // true
  print(false || false); // false

  /* ! логічне заперечення. Повертає обернене булеве значення */
  print(!true); // false
  print(!false); // true

  /* Операці з логічними операторарами */
  bool haveCar = true;
  bool haveHouse = true;
  bool haveMoney = false;
  int age = 18;

  print(haveCar && haveHouse && age >= 18); // true
}

void main(List<String> arguments) {
  boolean();
}
