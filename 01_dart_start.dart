//变量:https://dart.cn/samples#variables
void variables()
{
    var name = 'Voyager I';
    var year = 1977;
    var antennaDiameter = 3.7;
    var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
    var image = {
    'tags': ['saturn'],
     'url': '//path/to/saturn.jpg'
    };
    print('name is $name\nyear is $year\nantennaDiameter is $antennaDiameter\nflybyObjects is $flybyObjects\nimage is $image\n');
}

//流程控制语句https://dart.cn/samples#control-flow-statements
void flow_control() {
  print('======流程控制语句======');
  var year = 1977;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }
  for (final object in flybyObjects) {
    print(object);
  }
  for (int month = 1; month <= 12; month++) {
    print(month);
  }
  while (year < 2016) {
    year += 1;
  }
}

//函数https://dart.cn/samples#functions
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  variables();
  flow_control();
  var result = fibonacci(20);
  print('20th fibonacci result is $result');
}