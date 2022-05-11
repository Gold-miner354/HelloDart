//类:https://dart.cn/samples#classes
//扩展，Mixins，抽象类
class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
class Orbiter extends Spacecraft with Piloted{
  double altitude;
    void describe()
    {
        print('helloworld!');
    }
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
class text extends Describable
{
    
    void describe()
    {
        print('helloworld!');
    }
}
abstract class Describable {//抽象类
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}
void main()
{
    var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
    voyager.describe();

    var voyager3 = Spacecraft.unlaunched('Voyager III');
    voyager3.describe();

    var voyager4=Orbiter('Voyager IIII',DateTime(2002, 3, 27),52.0);
    voyager4.describe();
    voyager4.describeCrew();
    var text3=text();
    text3.describeWithEmphasis();
}
