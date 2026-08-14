void main(List<String> arguments) {
  vars();
}

void vars() {
  /* Явне вказання типу даних */
  String name = "Oleksandr";

  int age = 26;
  int hex = 0xDEAFF;

  double height = 1.83;
  bool isStudent = true;

  /* num - Він є загальним супертипом (батьківським типом) для двох числових типів */
  num sum = 15;
  sum = 15.5;

  /* Ключове слово var(дарт сам розуміє тип) */
  var city = "Kyiv";

  /* 
  final так const - значення змінною не повинно змінюватись після створення
    final — значення визначається під час виконання програми ( runtime).
    const — значення є повністю константним ще під час компіляції (стандартне фіксоване значення).
*/
  final String idUser = "56565";
  const double pi = 3.14159;

  /* dynamic - якщо потрібно щоб змінна змінювала не лише значення, а й тип */
  dynamic anything = "Текст";
  anything = 5555;
}
