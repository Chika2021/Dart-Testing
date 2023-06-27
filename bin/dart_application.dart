import 'package:dart_application/dart_application.dart' as dart_application;
import 'package:test/test.dart';

void main(List<String> arguments) {
  var name = 'Voyager';
  var year = 1997;
  var antennaDiameter = 3.7;
  var flybyObjects = {'jupeter', 'Saturn', 'Uranus', 'Neptune'};

  // var image = {
  //   'tags': {'saturn'},
  // };

  // print(name);
  // print(year);
  // print(antennaDiameter);
  // print(flybyObjects);
  // print(image);

  if (year >= 2001) {
    print('21st Century');
  } else if (year >= 1901) {
    print('20th Century');
  } else {
    print('Error Reading File');
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  var result = fibonacci(20);

  print(result);

  // Person person1 = Person('Alice', 25);
  // person1.sayHello();

  // Person person2 = Person('Bob', 76);
  // person2.sayHello();

  Subscriber subOne = Subscriber('Johnny Depp', 34, 'India');

  subOne.welcome();

  Register me = Register('Vivian', 9876);
  me.ask();

  Subscriber subTwo = Subscriber('Teddy', 45, 'China');
  subTwo.welcome();

  Register monday = Register('Rovence', 45);
  monday.ask();

  Person person = Person('Alice');
  print(person.name);

  Vote vote = Vote('PDP');
  print(vote.name);

  Favour favour = Favour('Favour');
  print('My name is ${favour.name}');

  MyApp app = MyApp.constructorName('Anna');
  print('My name is ${app.name}');

  IceMachine machine = IceMachine.iceMachine('Powerful');
  print('I am ${machine.power}');

  Car car = Car.carConstructor('Sinking Car');

  print('We are half awake in a ${car.car}');

  Param param = Param('Kristen', 32);
  print('Hello ${param.name} you are ${param.age} years old');

  var animal = Animal('Shane');
  animal.eat();

  var bingo = Dog('Kristen', 'Karme');
  bingo.drink();

  bingo.eat();
  print('The Parent object ${bingo.name}');

  var chika = Chika('Hallel', 'Amaechi');
  print('This is our world ${chika.name} and ${chika.ccc}');
}

// class Person {
//   String name;
//   int age;

//   Person(this.name, this.age);
//   void sayHello() {
//     print('Hello , my name is $name and i am $age years old.');
//   }
// }

class Person {
  String _name;

  Person(this._name);

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

class Subscriber {
  String name;
  int age;
  String location;

  Subscriber(this.name, this.age, this.location);

  void welcome() {
    print(
        'Welcome $name. We can see in our record that you are $age and you leave in $location we are pleased to meet you');
  }
}

class Register {
  String name;
  int users;

  Register(this.name, this.users);

  void ask() {
    print('Welcome $name they are only $users using this App');
  }
}

class Vote {
  String _name;

  Vote(this._name);

  String get name => _name;

  set(String value) {
    _name = value;
  }
}

class Favour {
  String _name;

  Favour(this._name);

  String get name => _name;

  set(String value) {
    _name = value;
  }
}

class MyApp {
  String name;

  MyApp.constructorName(this.name);
}

class IceMachine {
  String power;

  IceMachine.iceMachine(this.power);
}

class Car {
  String car;

  Car.carConstructor(this.car);
}

class Param {
  String name;
  int age;

  Param(this.name, this.age);
}

class Animal {
  String name;

  Animal(this.name);
  void eat() {
    print(' Dog is Eating');
  }
}

class Dog extends Animal {
  String bingo;

  Dog(String name, this.bingo) : super('name');

  void drink() {
    print('Dog is drinking');
  }
}

class Chika extends Animal {
  String ccc;

  Chika(String name, this.ccc) : super(name);
}
