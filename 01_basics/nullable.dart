import "dart:io";

void learnNullable() {
  /* 
  Запис int? a; — це і є класичний приклад роботи з Nullable (нуллабельними) типами в Dart.(тип може бути будь який)
  Знак питання ?, доданий після назви типу (int?, String?, bool?), каже компілятору:

  «Ця змінна особлива. Вона може містити звичайне число, або в ній може не бути нічого взагалі (тобто значення null)»
   */
  int? a; // Оголошуємо нуллабельну змінну. Оскільки значення ми не задали, вона автоматично отримує null.
  print(a); // Виведе в консоль: null

  /* ?? - Null-aware operator (оператор, що враховує null)*/
  int? c;
  print(c ?? 10); // 10, тому що в змінній с нічого немає

  /* також можемо порівнювати з null(== or !=) в умовах*/
  var b = stdin.readLineSync();

  if (b != null) {
    print('Var is not empty');
  } else {
    print('Var is empty');
  }

  /* ! - Оператор примусового приведення до не-null */
  // точно знаємо що в змінній не може бути null
  var d = stdin.readLineSync()!;
  // тоді ми одразу ідемо по вірній умові, і знаємо що в змінній щось є.

  /* після змінної, але перед методом */
  String? text = stdin.readLineSync();

  // print(text.contains('п')); // The method 'contains' can't be unconditionally invoked because the receiver can be 'null'.
  /* 
  Спочатку програма дивиться на змінну text.
  Якщо в ній зберігся рядок (наприклад, користувач ввів "google"), то метод .contains('g') успішно виконається і виведе в консоль true.
  Якщо ж користувач нічого не ввів і натиснув Enter (тобто text дорівнює null), програма не впаде з помилкою, а просто поверне null і надрукує його в консоль, акуратно обійшовши виклик методу .contains. 
  */
  print(text?.contains('g'));

  /* ! після змінної але перед методом, каже нам що в змінній 100% буде не null */
  String text2 = stdin.readLineSync()!; // користувач точно щось введе

  print(text2.contains('s'));
}

void main(List<String> arguments) {
  learnNullable();
}
