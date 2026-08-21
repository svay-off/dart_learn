import 'dart:io';

void learnControlFlow() {
  var a = 10, b = 30, c = 7;

  /*
  if else - це базовий оператор, котрий керує потоком виконання програми,
  при true виконує один блок коду, при false інший.

  також ми можемо відкидувати блок else, if else, якщо нам це не потрібно в певних випадках.
  */

  if (a > b) {
    print('a > b');
  } else if (a > c) {
    print('a > c'); // a > c
  } else {
    print('Ні те, ні інше.');
  }

  /* && в if else */
  var k = 20;

  // чи входить k в проміжок
  if (k >= 0 && k <= 50) {
    print('k входить в проміжок');
  } else {
    print('поза проміжком');
  }

  /* використовуємо &&, || в умовах */
  /* 
  Є користувач. Він хоче сходити в клуб. Ми повинні перевірити чи є йому 18 років(якщо є, пропускаємо, якщо ні - відміна).
  Також потрібно визначити умовою чи є в нього гроші, якщо грошей немає але є друзі, тоді
  він може також піти в клуб, бо друзі можуть закинути кошти. Також треба перевірити якщо в нього є знайомі котрі керують клубом, 
  то він може пройти навіть якщо йому немає 18, немає грошей, та немає друзів.
 */
  Map<String, dynamic> user = {
    'name': 'Andjey',
    'age': 17,
    'money': 0,
    'haveFriends': false,
    'haveFriendsWhoOwn': true,
  };

  if ((user['age'] >= 18 && (user['money'] != 0 || user['haveFriends'])) ||
      user['haveFriendsWhoOwn']) {
    print('Запускаємо людинку з іменем ${user["name"]} в клуб');
  } else {
    print('Нажаль не можемо тебе ${user["name"]} впустити.');
  }

  /* як, та що буде при умові, якщо є не null-safety та навпаки */
  var someText = stdin.readLineSync();
  var l = someText?.isNotEmpty;

  if (someText != null && someText.isNotEmpty) {
    var l = someText.isNotEmpty;
  }
  ///////
  var text = stdin.readLineSync();
  if (text != null && text.isNotEmpty) {
    var num = int.parse(text);

    print(num! * 5);
  } else {
    print('Oo');
  }
}

void main(List<String> arguments) {
  learnControlFlow();
}
