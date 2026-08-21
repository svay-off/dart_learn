void learnTernaryOperator() {
  /* ? - Тернарний оператор, це компактна однорядкова заміна звичайного блоку if-else.
  Він дозволяє швидко перевірити умову і повернути одне з двох значень залежно від того, чи є вона істинною (true), чи хибною (false)
  */

  var a = 50;
  var b = 100;

  var c = a > b ? 'а було більше b' : 'а було менше b';
  print(c);

  /* максимум з трьох чисел */
  var d = 25, e = 50, f = 20;

  var max = d > e
      ? d > f
            ? a
            : f < e
            ? e
            : f
      : e > f
      ? e
      : c;
}

void main(List<String> arguments) {
  learnTernaryOperator();
}
