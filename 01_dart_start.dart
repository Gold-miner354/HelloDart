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
    print('name is &name,year is $year,antennaDiameter is $antennaDiameter,flybyObjects is $flybyObjects,image is $image');
}
//胖箭头
void text3()
{
    var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
    flybyObjects.where((name) => name.contains('turn')).forEach(print);
}
//流程控制语句:https://dart.cn/samples#control-flow-statements
void control()
{
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
    print('year is $year');

}
//注释:https://dart.cn/samples#comments
/// 这是一个文档注释。
/// 文档注释用于为库、类以及类的成员添加注释。
/// 像 IDE 和 dartdoc 这样的工具可以专门处理文档注释。

/* 也可以像这样使用单斜杠和星号的注释方式 */
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
void main(List<String> args)
{  
    //你好，世界
    print('Hello,world!');
    //变量
    variables();
    //流程控制语句
    control();
    //函数
    var result = fibonacci(20);
    print('result is $result');
    //胖箭头
    text3();
}
