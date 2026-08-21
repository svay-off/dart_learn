void learnDestructuring() {
  // DART 2
  final myList = [1, 2];
  var a = myList[0];
  var b = myList[1];
  print('a: $a, b: $b'); // a: 1, b: 2

  // DART 3
  var [a1, b1] = myList;
  print('a: $a1, b: $b1'); // a: 1, b: 2

  /* Деструктуризація коли ми знаємо скільки елементів в списку, знаємо котрі нам потрібні, та на котрих вони позиціях */
  var myList1 = [1, 2];
  final [a2, _] = myList1;
  print('a: $a2'); // a: 1

  var myList2 = [1, 2, 3, 5];
  final [a3, _, b3, _] = myList2;
  print('a: $a3, b3: $b3'); // a: 1, b3: 3

  /* rest оператор. Використати можемо тільки один раз при деструктуризації */
  var myList3 = [1, 2, 3, 5, 7, 5, 2];

  final [a4, ..., b4] =
      myList3; // розпаковуємо тільки перший та останній елемент списку
  print('First: $a4, Second: $b4'); // First: 1, Second: 2

  final [..., a5, b5] = myList3; // розпаковуємо два останніх елементи списку
  print('PreLast: $a5, Last: $b5'); // PreLast: 5, Last: 2

  final [a6, ...] = myList3; // розпаковуємо перший елемент списку
  print('First: $a6'); //  First: 1

  final [a7, ...b7, c7] = myList3; // перший елемент та останній елементи помістили в змінні a7, c7, і все що між ними, тобто список, поміщено в змінну b7
  print(
    'FirstEl: $a7, MiddleList: $b7, LastEl: $c7',
  ); // FirstEl: 1, MiddleList: [2, 3, 5, 7, 5], LastEl: 2

  final [a8, b8, ...c8] = myList3; // перший та другий елементи в a8, b8, список інших елементів в с8
  print(
    'FirstEl: $a8, SecondEl: $b8, List: $c8',
  ); // FirstEl: 1, SecondEl: 2, List: [3, 5, 7, 5, 2]

  final [...a9, b9, c9] = myList3; // перший та другий елементи в a8, b8, список інших елементів в с8
  print(
    'List: $a9, PreLastEl: $b9, LastEl: $c9',
  ); // List: [1, 2, 3, 5, 7], PreLastEl: 5, LastEl: 2

  /* REST НЕ БУДЕ ПРАЦЮВАТИ */
  // final [..., a100, ...] = myList3; // error

  /* деструктуризоване присвоєння */

  List listA = [11, 12, 13];
  List listB = [14, 15, 16];

  [listA, listB] = [listB, listA];

  print('$listA, $listB'); // [14, 15, 16], [11, 12, 13]

  /* Деструктуризація Record(записів) */
  // 1
  var myRecord = (1, 'str');
  var (number, text) = myRecord;

  // 2
  var myRecord2 = ('choise', 'more choise');
  var (_, someText) = myRecord2;
  print(someText); // more choise

  // 3
  (int, String, {int cost, String smile}) myRecord3 = (
    2,
    cost: 20,
    smile: "-I-",
    "some text",
  );

  var (someNumber, someText2, cost: oneMoreNumber, smile: smile2) = myRecord3;

  // 4
  (int, String, double, {int cost, String smile, String badSmile}) myRecord4 = (
    2,
    cost: 20,
    smile: "-I-",
    badSmile: ":(",
    "some text",
    2.14,
  );

  var (
    someNumber2,
    _,
    noP,
    cost: oneMoreNumber2,
    smile: _,
    badSmile: badSmile,
  ) = myRecord4;

  print("$someNumber2, $noP, $oneMoreNumber2, $badSmile"); // 2, 2.14, 20, :(

  // 5
  var myRecord5 = (3.14, cost: 10, smile: '-_-', 22);
  var (pi, smile) = (myRecord5.$1, myRecord5.smile);

  print('$pi, $smile'); // 3.14, -_-

  /* Перекинути значення змінних одне в інше */
  var num1 = 5;
  var num2 = 10;

  (num1, num2) = (num2, num1);
  print('$num1 and $num2'); // 10 and 5

  /* Деструктуризація хеш - таблиць */
  final myMap = {"first": 1, "second": 2, "third": 3};
  print(myMap);

  // 1
  final {'first': first, "second": second, "third": third} = myMap;
  print('$first, $second, $third'); // 1, 2, 3

  // 2
  final {'second': numA} = myMap;
  print(numA); // 2

  //3 у нас таблиця, котра вміщає в собі ключі - рядки, значення - списки
  Map<String, List<int>> myMap2 = {
    'firstList': [12, 3, 4, 5, 67],
    'secondList': [11, 6, 8, 35, 7],
  };

  var {"firstList": [l, k, _, c, _]} = myMap2;
  print("$l, $k, $c"); // 12, 3, 5

  // 4 у нас таблиця, котра вміщає в собі ключі - рядки, також таблиці Map
  Map<String, Map<String, num>> myMap3 = {
    'firstMap': {'num1': 1, 'num2': 2},
    'secondMap': {'num1': 12, 'num2': 13},
  };

  var {'firstMap': {'num1': n}, 'secondMap': {"num2": o}} = myMap3;

  print('n+o = ${n + o}'); // n+o = 14

  /* достукати до елементів з простенького json(приклад) */
  Map<String, dynamic> json = {
    'person1': ['Alex', 22],
    'person2': ['Max', 32],
    'employer': {
      'name': 'John',
      'age': 20,
      'salary': 3000,
      'boss': {
        'name': 'Stone',
        'idEmployers': [0, 1, 2],
      },
    },
  };

  // 1
  var {'person1': [name, age]} = json;
  print('person1: Name - $name, Age - $age'); // person1: Name - Alex, Age - 22

  // 2
  var {'employer': {'name': empName, 'age': empAge, 'salary': empSalary}} =
      json;
  print(
    'Employer: Name - ${empName}; Age: $empAge; Salary: ${empSalary}',
  ); // Employer: Name - John; Age: 20; Salary: 3000

  // 3
  var {'employer': {'boss': {'idEmployers': [...ids]}}} = json;
  print('id employers: $ids'); // id employers: [0, 1, 2]

  /* Деструктуризація класів */

  var employee = Employee("Valery", 25, 7400);

  var Employee(name: empName2, age: empAge2, salary: empSalary2) = employee;
  print(
    "Name: $empName2, Age: $empAge, Salary: $empSalary",
  ); // Name: Valery, Age: 20, Salary: 3000

  employee = Employee("Alex", 19, 3000);
  var Employee(name: empName3, salary: empSalary3) = employee;
  print("name: $empName3, salary: $empSalary3"); // name: Alex, salary: 3000

  /* Якщо деструктуровані змінні будуть ті самі що і в класі */

  var Employee(:salary) = employee;
  print('salary: $salary'); // salary: 3000
}

class Employee {
  final String name;
  final int age;
  final int salary;

  Employee(this.name, this.age, this.salary);
}

void main(List<String> arguments) {
  learnDestructuring();
}
