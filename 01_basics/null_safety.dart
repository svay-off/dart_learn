void learnNullSafety() {
  /* Null-aware operators (оператори безпечного доступу або оператори, що враховують null) */
  var myList = <dynamic>[10, null, 20, null, 30];
  /* без null-aware оператора */
  var newList = [
    for (var a in myList)
      if (a != null) a,
  ];

  print(newList); // [10, 20, 30]

  /* із null-aware оператором */
  var oneMoreList = [for (var a in myList) ?a];
  print(oneMoreList); // [10, 20, 30]

  /* демонстарція перевірки на нал, при додаванні значень змінних до списків */
  int? a;
  int? b = 1;
  int c = 10;

  var lst = [?a, ?b, c];
  print(lst); // [1, 10]

  /* Використання ? в хеш-таблицях */
  String name = 'Tommy';
  int age = 10;
  String? master;

  Map<String, dynamic> cat = {
    'name': name,
    'age': age,
    'firstMaster': ?master, // пара ключ-значення не потрапить в таблицю
    ?'secondMaster': master, // потрапить в таблицю, але значення буде null
  };

  print(cat); // {name: Tommy, age: 10, secondMaster: null}
}

void main(List<String> arguments) {
  learnNullSafety();
}
