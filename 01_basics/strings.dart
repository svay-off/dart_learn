import 'dart:io';

void strings() {
  /* 3 способи оголошення рядків */
  String text1 = 'Somethink...';
  var text2 = "Щось тут є і пір'я летить";
  var text3 = '''Переносний
рядок з текстом''';

  /* Звертання до символа через індекс */
  print(text1[0]); // S

  /* length - дозволяє дізнатись яка довжина рядка */
  print(text2.length); // 25

  /* Вирізає певну довжину рядка, та повертає результат */
  String text4 = "Л" + text2.substring(1);
  print(text4); // "Лось тут є і пір'я летить"

  String text5 = "Л" + text2.substring(1, 15);
  print(text5); // Лось тут є і пі

  /*toLowerCase, toUpperCase - Зміна регістру рядка в верхній або нижній*/

  print(text2.toLowerCase()); //щось тут є і пір'я летить
  print(text2.toUpperCase()); //ЩОСЬ ТУТ Є І ПІР'Я ЛЕТИТЬ

  /* String to int or double, рядок в число */
  var myInt = int.parse("31"); // 31
  var myDouble = double.parse('22.50');

  /* Number to string */

  var s1 = 14.toString(); // "14"
  var s2 = myInt.toString(); // "31"

  /* Залишити n - кількість чисел після крапки */
  String s3 = 1.14159.toStringAsFixed(2);
  print(s3); //1.14

  /* Показати форматований вивід в термінал */
  print('Value: $s3');
  print('Value: ${double.parse(s3)}');

  /* Порівняння рядків */
  var s11 = 'Oo', s12 = 'Oo';

  print(s11 == s12); // true // вміст рядків однаковий
  print(s11 == 'oO'); // false // вміст рядків різний

  /* Лексографіне порівняння (по старшій літері в алфавіті)*/
  s11 = 'Мама';
  s12 = 'Тато';

  print(s11.compareTo(s12)); // -1 - М знаходиться перед П
  print(s12.compareTo(s11)); // 1 П знаходиться після М
  print(s1.compareTo('Мама')); // 0 літери рівні по позиції
  print(s1.compareTo('Мамg')); // -1, порівнюються перші три літери "Мам" - вони рівні, далі а та g. В латинському кодуванні g іде пізніше за м

  /* Пошук підрядка в рядку */
  var s13 = "Щось тут написано.";

  print(s13.contains('сь')); // true
  print(s13.contains('лап')); // false
  print(
    s13.contains('т', 6),
  ); // true. Починаючи з 6 символу знайти входження підрядка

  /* Знайти index входження символа або підрядка */

  print(s13.indexOf('т')); // 5
  print(s13.indexOf('т', 6)); // 7
  print(s13.indexOf('Щ', 2)); // -1
  print(s13.lastIndexOf('о')); // 16.

  /* Видалити пробіли в рядку */
  String s7 = "     Рядок з пробілами    ";

  print(s7.trimLeft()); // "Рядок з пробілами    "
  print(s7.trim()); // "Рядок з пробілами"
  print(s7.trimRight()); // "     Рядок з пробілами"

  /* Заміна підрядків або символів в рядку */

  print(s13.replaceAll('тут', 'here')); // Щось here написано.
  print(s13.replaceFirst('н', "Л")); // Щось тут Лаписано. Замінює тільки перший підрядок або символ котрий знайде

  /* Розбиває рядок, та робить список з слів */
  String someStr = 'Hello world!';
  List someList = someStr.split('');
  print(someList); // [H, e, l, l, o,  , w, o, r, l, d, !]
  // далі ми можемо з'єднати список елементів далі в рядок методом join

  print(someList.join('-')); // "H-e-l-l-o- -w-o-r-l-d-!" рядок з розділювачем -

  /* isEmpty, isNotEmpty перевірка на пустий рядок */
  var s19 = 'kfjglkjgh';

  print(s19.isEmpty); // false
  print(s19.isNotEmpty); // true

  /* allMatches - шукаємо кількість входів символів або підрядка в рядку */

  var count = 'l'.allMatches(someStr).length;
  print(count); //
}

void main(List<String> arguments) {
  strings();
}
