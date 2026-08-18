void learnMap() {
  /* тип Map - дозволяє зберігати значення в парі з ключами
  Ключи можуть бути String, Int,  ітд. Він повинен бути унікальним і правильно підтримувати хешування (hashCode) та порівняння (operator ==). 
  */
  var myMap = <String, String>{
    // ключ              //значення
    "first": "Mom",
    "second": "Father",
    "third": "Brother",
  };

  /* хеш - таблиці різного роду */

  var oneMoreMap1 = <int, List<int>>{
    1: [1, 2, 3, 4],
  };

  var oneMoreMap2 = <int, Map<int, List<int>>>{
    1: {
      1: [1, 2, 3, 4, 5],
    },
  };

  print(myMap); // {first: Mom, second: Father, third: Brother}

  var myMap2 = <int, String>{1: "car", 2: "bike"};
  print(myMap2); // {1: "car", 2: "bike"}. Ключами є вже числа

  var myMap3 = Map<int, String>(); // створення пустого map(не рекомендується)
  var myMap4 = <int, String>{}; // створення пустого map(Найкращий спосіб)

  /* fromIterables - Створення map за допомогою двох списків(довжина списків повинна бути одинаковою) */
  List<int> numList = [1, 2, 3, 4, 5];
  List<String> stringList = ["some", "words", "in", "this", "text"];

  var newMap = Map<int, String>.fromIterables(numList, stringList);
  print(newMap); // {1: some, 2: words, 3: in, 4: this, 5: text}

  /* Зміна або додавання значень до map через індекс */

  var myMap5 = <int, String>{1: 'red', 2: 'black', 3: 'green'};
  myMap5[1] = 'pink';
  myMap5[5] = 'yellow';

  print(myMap5); // {1: pink, 2: black, 3: green, 5: yellow}

  /* Зміна або додавання до map кількох ключів та значень */
  var myMap6 = <int, String>{1: 'red', 2: 'black', 3: 'green'};
  myMap6.addAll({1: 'white', 4: 'brown'});

  print(myMap6); // {1: white, 2: black, 3: green, 4: brown}

  /* Отримання даних по ключу */
  var color = myMap6[1];
  print(color); // white
  color = myMap6[10]; // null

  /* Якщо ключ відсутній, то ми вказуємо ключ і значення котре буде додано */
  var myMap7 = <int, String>{1: "people"};
  var a = myMap7.putIfAbsent(1, () => "humans");
  print(myMap7); // залишається {1: people}

  a = myMap7.putIfAbsent(2, () => "humans");
  print(myMap7); // {1: people, 2: humans}

  /* Базові властивості хеш - таблиць */
  var myMap8 = <int, String>{
    1: "a",
    2: "b",
    3: "c",
    4: "d",
    5: "e",
    6: "f",
    7: "g",
  };

  /* Кількість елементів хеш-таблиці */
  print(myMap8.length); // 7

  /* Отримати список ключів хеш-таблиці */
  print(myMap8.keys.toList()); // [1, 2, 3, 4, 5, 6, 7]

  /* Отримати список значень хеш-таблиці */
  print(myMap8.values.toList()); // [a, b, c, d, e, f, g]

  /* Перевірка чи хеш-таблиця зберігає елементи чи пуста */
  print(myMap8.isEmpty); // false
  print(myMap8.isNotEmpty); // true

  /* Видалити пару ключ-значення */
  myMap8.remove(2);
  print(myMap8); // {1: a, 3: c, 4: d, 5: e, 6: f, 7: g}

  /* removeWhere - видалити пари по умові */
  myMap8.removeWhere(
    (key, value) => (key % 2 == 1),
  ); // видаляє всі пари, ключі котрих мають остачу при ділення 1

  print(myMap8); // {4: d, 6: f}

  /* очистка хеш-таблиці */
  myMap8.clear();
  print(myMap8); // {}

  /* Перевірка на те, чи є ключ або значення в хеш - таблиці */
  var myMap9 = <int, String>{
    1: "a",
    2: "b",
    3: "c",
    4: "d",
    5: "e",
    6: "f",
    7: "g",
  };

  print(myMap9.containsKey(5)); // true
  print(myMap9.containsKey(9)); // false

  print(myMap9.containsValue('a')); // true
  print(myMap9.containsValue('dd')); // false

  /* .update - оновлення значення певного ключа */
  var myMap10 = <int, String>{1: "a", 2: "b", 3: "c", 4: "d"};
  myMap10.update(2, (value) => (value += 'k'));

  print(myMap10); // {1: a, 2: bk, 3: c, 4: d}

  /* якщо ключа не існує */
  myMap10.update(5, (value) => ('$value'), ifAbsent: () => ('l'));
  print(myMap10); // {1: a, 2: bk, 3: c, 4: d, 5: l}

  /* застосовується до всіх ключів, якщо потрібно зміити всі значення */
  myMap10.updateAll(((key, value) => value.toUpperCase()));
  print(myMap10); // {1: A, 2: BK, 3: C, 4: D, 5: L}
}

void main(List<String> arguments) {
  learnMap();
}
