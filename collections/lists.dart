void lists() {
  /* List тип даних, котрий використовується для зберігання колекції елементів */
  /* Варіанти Оголошення списків */
  /*1. Неявне оголошення списку, компілятор сам визнаить на базі елементів */
  var list1 = [
    1,
    2.0,
    4,
  ]; // можуть потрапити до колекції різні типи даних, рядки ітд

  /*2. Явно вказуємо тип і з чого буде склдатись список  */
  List<int> list2 = [
    1,
    2,
    2,
    2,
  ]; // явно вказано що в нас List котрий складається з <int>

  // List<int> list3 = [1, 2.0, 2, 2]; // error, присутній в списку тип double

  /* 3. Явно вказуємо які типи елементів будуть потрапляти в список */
  var list4 = <int>[];

  /* Зміна значення списку за індексом */
  List<int> list5 = [1, 5, 7, 9];
  list5[0] = 5;
  print(list5); // [5,5,7,9]

  /* const - кажеш що список змінювати не можна */

  var list6 = const <String>['day', 'hours', 'minutes', 'seconds'];
  // list6[2] = 'other'; // errot. Cannot modify an unmodifiable list
  print(list6);

  /* 
  .filled - метод для створення списку певної довжини, котрий заповнений одинаковими елементами
  List.filled(int length, E fill, {bool growable = false})
  */
  List<double> list7 = List.filled(5, 2.5); // незмінний список
  List<double> list8 = List.filled(5, 2.5, growable: true); // змінний список
  print(list7);
  print(list8);

  /* Додавання в кінець списку */
  List someList = [];
  someList.add(5);
  print(someList); // [5]

  /* Розширюємо список елементами іншого масиву */

  someList.addAll([1, 6]);
  print(someList); // [5, 1, 6]

  /* lenght - розмір поточного масиву */
  print(someList.length); // 3

  /* Розширення або створення списку за допомогою rest оператора та за допомогою +=*/
  List<int> oneMoreList = [1, ...someList];
  print(oneMoreList); // [1, 5, 1, 6]

  oneMoreList += oneMoreList;
  print(oneMoreList); // [1, 5, 1, 6, 1, 5, 1, 6]

  /* Вставити елемент на вказану позицію по індексу(може бути енерговитратним способом, треба робити додатковий зсув) */
  oneMoreList.insert(0, 100);
  print(oneMoreList); // [100, 1, 5, 1, 6, 1, 5, 1, 6]

  /* Вставити елемент або список за доп. insertAll */
  oneMoreList.insertAll(3, [7, 7, 7, 7]); // з третьої позиції вставл. [7, 7, 7, 7]. [100, 1, 5, 7, 7, 7, 7, 1, 6, 1, 5, 1, 6]
  print(oneMoreList); //

  /* Видалення елемента з списку по індексу, та першому входженні, та видалення останнього елементу */
  var list9 = [4, 6, 9, 0, 5];
  list9.removeAt(0); // видалення по індексу
  print(list9); // [6, 9, 0, 5]

  list9.remove(9);
  print(list9); // [6, 0, 5]

  list9.removeLast();
  print(list9); // [6, 0]

  /* Видаляємо діапазон елементів */
  List list10 = [1, 4, 6, 8, 9, 0, 0];
  list10.removeRange(2, 5);

  print(list10); // [1, 4, 0, 0]

  /* Видаляємо всі елементи списку */
  list10.clear();

  print(list10); // []

  /* Видаляємо всі елементи по умові */
  List<int> list11 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  list11.removeWhere((el) => el % 2 == 0); // видал. парні числа

  print(list11); // [1, 3, 5, 7, 9]

  /* Присвоєння елемента в список через = */
  var list12 = [4, 6, 7, 98, 9, 0];
  list12[2] = 5;
  print(list12); // [4, 6, 5, 98, 9, 0]

  /* Замана елементів за допомогою setAll */
  list12.setAll(2, [2, 3, 5]);
  print(list12); // [4, 6, 2, 3, 5, 0]

  /*Заміна елементів в певному діапазоні */
  list12.replaceRange(2, 5, [7, 7, 7, 7, 7]); // заміна з 2 по 5-1
  print(list12); // [4, 6, 7, 7, 7, 7, 7, 0]

  /* Перезаписуємо діапазон за допомогою fillRange певним елементом */
  list12.fillRange(1, 4, 0);
  print(list12); // [4, 0, 0, 0, 7, 7, 7, 0]

  /* Розбиття рядка в список та об'єднання списку в рядок - split та join */
  String text = "Opana a sho take?";
  var listFromText = text.split('');

  listFromText.removeWhere((el) => el == "a");
  print(listFromText); // [O, p, n,  ,  , s, h, o,  , t, k, e, ?]

  text = listFromText.join('');
  print(text); // Opn  sho tke?

  /* Перевірка списка чи він пустий чи ні */
  print(listFromText.isEmpty); // false
  print(listFromText.isNotEmpty); // true

  /* Створення списку з ітерованої послідовності from*/
  var list13 = List<String>.from(listFromText);
  print(list13); // [O, p, n,  ,  , s, h, o,  , t, k, e, ?]

  /* sublist - вирізати з масиву певну к-ть елементів, і створити новий список */
  var list14 = ['var', 'sen', 'len', 'car', 'don', 'son'];
  print(list14.sublist(3)); // ['car', 'don', 'son']
  print(list14.sublist(2, 4)); // [len, car]

  /* where - Формуємо новий список по умові */
  List<int> list15 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var filtered = list15.where(
    (el) => el % 2 == 0,
  ); // (2, 4, 6, 8, 10). отримуємо ітерований об'єкт

  print(filtered);

  var list16 = filtered.toList(); // перетворюємо на справжній список
  print(list16); // [2, 4, 6, 8, 10]

  /* contains - перевірка чи є елемент в списку */
  List<String> list17 = ["str", "some", "who", "get", " some"];

  print(list17.contains("who")); // true

  /* indexOf - індекс елементу */
  print(list17.indexOf("some")); // 1
  print(
    list17.indexOf("some", 2),
  ); // -1. Шукає з 2 елемента, коли не нехаодить - -1

  /* lastIndexOf - шукає останнє входження елемента */
  print(list17.lastIndexOf("some")); // 1

  /* indexWhere - пошук першого входження по умові(повертає індекс), lastIndexWhere - шукаємо індекс останнього входження */
  print(list17.indexWhere((el) => el.contains('ho'))); // 2

  /* firstWhere, lastWhere - пошук значення першого або останнього елемента, котрий задовільняє умову */
  print(list17.firstWhere((el) => el == "some")); // "some"

  /* any - метод застосовується для перевірок, повертає true або false */
  print(
    list17.any((el) => el.length > 3),
  ); // true (є рядки в котрих довжина більше ніж 3 символи)
  print(list17.any((el) => el.length > 7)); // false

  /* Перемішати елементи списку(використання рандому) */
  List<int> list18 = [1, 5, 6, 8, 9, 0];
  list18.shuffle();
  print(list18); // [9, 0, 5, 8, 6, 1]w

  String text2 = "sometext";
  List<String> list19 = text2.split(
    "",
  ); // [s, o, m, e,  , t, e, x, t] розбиваємо рядок на список з елементів
  print(list19);

  list19.shuffle(); // перемішуємо елементи(літери) списку
  text2 = list19.join('');
  print(text2); // toeesmtx

  /*
  reduce - використовується щоб об'єднати всі елементи списку в одне значення. value - стартує з 0,
  а elem - кожен елемент списку. value - 0 + elem 1 = 1, далі value містить значення 1 і далі ми додаємо елемент 2
  далі value містить вже 3 ітд.
  */
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  var sum = numbers.reduce((value, elem) {
    return value += elem;
  });

  print(sum); // 21

  /*(collection if) Використання умов прямо в списках */
  var check = false;
  var list20 = ["some", "people", "needs", if (check) "money"];
  print(list20); // [some, people, needs]

  check = true;
  list20 = [
    "some",
    "people",
    "needs",
    if (check) "money",
  ]; // щоб список побачив зміни котрі відбулисьб, треба перезаписати список
  print(list20);

  /* Цикли в списку та формування нового списку на базі старого */
  var intList = [1, 2, 3, 5, 6, 7, 8];
  var newList = [for (var i in intList) "#$i"];
  print(newList);

  var oddList = [
    for (var i in intList)
      if (i % 2 != 0) i,
  ];

  print(oddList);

  /* При роботі з List операції копіювання виконуються по посиланні а не по значенні */
  List newList1 = [
    ['str1', 'str2', 'str3', 'str4', 'str5'],
  ];
  List newList2 = List<List<String>>.from(
    newList1,
  ); // копіюємо вкладений список
  newList2[0].add('str6'); // змінюємо і масив з котрого зробили копію(а тобто маніпуляції відбуваються по посиланні)
  newList2[0][2] = ('Str3');
  print(newList2);

  print('Елементи newList1: $newList1');
  print('Елементи newList1: $newList2');
}

void main(List<String> args) {
  lists();
}
