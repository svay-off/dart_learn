void learnSet() {
  /* Set - множина, котра зберігає в собі тільки унікальні елементи */
  /* Способи Оголошення Set */
  var mySet = <int>{1, 2, 3, 5, 6, 7}; // var 1
  Set<int> mySet2 = {1, 2, 3, 4, 5, 6}; // var 2

  /* Порожня множина */
  Set<int> mySet4 = {}; // var 1
  var mySet3 = <int>{}; // var 2

  /* Створення незмінної множини */
  String text = 'Hello world';
  Set<String> unmodifySet = Set.unmodifiable(text.split('')); // розбиваємо текст, на список елементів(літер), а далі перетворюємо його в немодифіковану множину
  print(unmodifySet);

  Set<String> modifySet = Set.from(
    text.split(''),
  ); // створюємо модифіковану множину з списку

  /* Залишити тільки унікальні значення в списку через множину Set */
  List<int> numList = [1, 2, 3, 4, 4, 5, 7, 7];
  print(numList); // [1, 2, 3, 4, 4, 5, 7, 7]

  List<int> newList = Set<int>.from(numList).toList();
  print(newList); // [1, 2, 3, 4, 5, 7]

  /* Ще варіант, якщо потрібно залишити унікальні символи з рядка */
  String text2 = 'Хтось показав мені як то потрібно зробити';
  List<String> uniqueSymbols = Set<String>.from(text2.toLowerCase().split(''))
      .toList();

  print(
    uniqueSymbols,
  ); // [х, т, о, с, ь,  , п, к, а, з, в, м, е, н, і, я, р, б, и]

  /* Дії з множиною Set */
  var mySet5 = <int>{1, 2, 3, 5, 6, 7};
  /* Додавання елементу */

  mySet5.add(8); // Додає новий елемент в кінець
  print(mySet5); // {1, 2, 3, 5, 6, 7, 8}

  /* Додавання кількох елементів */
  mySet5.addAll([9, 4, 6]); // додасть 9, 4 в кінець, а 6 вже є, тому проігнорує
  print(mySet5); // {1, 2, 3, 5, 6, 7, 8, 9, 4}

  /* Видалення елементу */
  mySet5.remove(2); // видаляє елемент 2
  print(mySet5); // {1, 3, 5, 6, 7, 8, 9, 4}

  /* Видалення кількох елементів */
  mySet5.removeAll([7, 8]); // видаляє елементи 7, 8
  print(mySet5); // {1, 3, 5, 6, 9, 4}

  /* Видалення елементу по умові */
  mySet5.removeWhere((el) => el > 5); // видаляємо елементи котрі більші 5
  print(mySet5); // {1, 3, 5, 4}

  /* Повністю очистити множину */
  mySet5.clear(); // {}

  /* Застосування циклу в Set */
  var myList = <int>[1, 2, 3, 5, 6, 7];

  var newSet = <int>{
    for (var i in myList)
      if (i % 2 == 0) i,
  };

  print(newSet); // {2, 6}

  /* Властивості множини Set */
  var mySet6 = <int>{1, 2, 3, 5, 6, 7};
  /* Доступ до першого та останнього елемента */
  print(mySet6.first); // 1
  print(mySet6.last); // 7

  /* Розмір множити  */
  print(mySet6.length); // 6

  /* Перевірка чи множина пуста чи ні */
  print(mySet6.isEmpty); // false
  print(mySet6.isNotEmpty); // true

  /* firstWhere, lastWhere - знаходить перший та останній елементи котрі відповідають умові */
  print(mySet6.firstWhere((el) => el > 3)); // 5
  print(mySet6.lastWhere((el) => el > 3)); // 7
  /* orElse - що повернути якщо перший або останній елем. не зайдено */
  print(mySet6.lastWhere((el) => el > 16, orElse: () => 0)); // 0

  /* where - повертається ітерована послідовність, тому треба перевести в множину .toSet(). (значення потрібно покласти в нову змінну) */
  print(mySet6.where((el) => el % 3 == 0)); // (3, 6)
  print(mySet6.where((el) => el % 3 == 0).toSet()); // {3, 6}

  /* Операції з множиною */
  var mySetA = <int>{1, 2, 3, 5, 6, 7};
  var mySetB = <int>{11, 22, 3, 55, 66, 7};

  /* об'єднання */
  print(mySetA.union(mySetB)); // {1, 2, 3, 5, 6, 7, 11, 22, 55, 66}
  /* вираховування */
  print(mySetA.difference(mySetB)); // {1, 2, 5, 6}
  print(mySetB.difference(mySetA)); // {11, 22, 55, 66}
  /* перетин */
  print(mySetA.intersection(mySetB)); // {3, 7}

  /* ПОТРІБНО ЗАВЖДИ СТВОРЮВАТИ ТА ПРИСВОЮВАТИ ЗНАЧЕННЯ ПІСЛЯ ВИКОРИСТАННЯ МЕТОДІВ В НОВУ ЗМІННУ */
  var newMySet = mySetA.union(mySetB);

  print(mySetA); // {1, 2, 3, 5, 6, 7}
  print(mySetB); // {11, 22, 3, 55, 66, 7}
  print(newMySet); // {1, 2, 3, 5, 6, 7, 11, 22, 55, 66}

  /* Перевірка, чи є в множині певні елемент. Не обов'язково по порядку, головне щоб вони загалом були в Set */
  var mySet7 = <int>{1, 2, 3, 5, 6, 7};
  print(mySet7.contains(6)); // true
  print(mySet7.contains(10)); // false
  print(mySet7.containsAll({3, 7})); // true
  print(mySet7.containsAll({2, 9})); // false
}

void main(List<String> arguments) {
  learnSet();
}
