import 'dart:math' as math;

void numbers() {
  /* compareTo - порівняння чисел(краще працювати з double) */
  print(4.0.compareTo(5.1)); // -1
  print(5.compareTo(4)); // 1
  print(4.compareTo(4)); // 0

  /* Беремо значення по модулю */
  print((-5).abs()); // 5
  print(-5.abs()); // -5

  /* Округлити число до найближчого цілого */
  print(5.5.round()); // 6
  print(5.4.round()); // 5

  /* Округлити до більшого або меншого ближчого цілого */
  print(5.5.ceil()); // 6
  print(5.5.floor()); // 5

  /* Перевірка на парне або непарне */
  print(6.isEven); // true
  print(6.isOdd); // false

  /* Перевірка числа на негативне */
  print((-5).isNegative); // true
  print((6).isNegative); // false

  /* Пред'ява числа в заданій системі обчислення */
  print(15.toRadixString(2)); // 1111
  print(15.toRadixString(8)); // 17
  print(15.toRadixString(10)); // 15
  print(15.toRadixString(16)); // f

  /* Кількість біт для збереження значення */
  print(5.bitLength); // 3

  /* Пошук найбільшого спільного дільника */
  print(30.gcd(12)); // 6

  /* stdin.readLineSync - зчитування символів з клавіатури */
  // var a = double.parse(stdin.readLineSync()!);
  // var b = int.parse(stdin.readLineSync()!);

  // print(a + b);

  /* Цілочисельне ділення */
  var c = 4;
  var d = 10;

  print(d ~/ c); // 2
  print(d / c); // 2.5

  /* Інкремент да декремент */
  // інкремент
  int incNumA = 5;
  int incNumB = 5;
  print(incNumA++); // 5 Постфіксна форма. Виконує операцію виводу, і тільки після цього кроку додає +1
  print(incNumA); // 6

  print(++incNumB); // 6 Префіксна форма. Спочатку додає, а потім виводить

  // декремент
  int decNumA = 5;
  int decNumB = 5;
  print(decNumA--); // 5 Постфіксна форма. Виконує операцію виводу, і тільки після цього кроку додає +1
  print(decNumA); // 4

  print(--decNumB); // 4 Префіксна форма. Спочатку додає, а потім виводить

  /* оператори скороченого запису *=, /=, +=, -=, %= ітд */
  var smallNumber = 10;
  smallNumber += 5;
  print(smallNumber); // 15

  /* Використання бібл. math для різних трегонометричних та математичних функцій */
  var value = math.pow(4, 3);
  print(value); // 64
}

void opportunities() {
  int bigNumber = 5000000000;
  int bigNumber2 = 5_000_000_000;
}

void main(List<String> arguments) {
  numbers();

  opportunities();
}
