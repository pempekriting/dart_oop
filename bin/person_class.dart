class Person {
  String name = 'Azzam';
  String? address;
  final country = 'Indonesia';

  void sayHello(String strangerName) {
    print('Hello $strangerName, my name is $name. I live in $address, $country');
  }

  void sayHelloExpressionBody(String strangerName) => print('Hello $strangerName, my name is $name. I live in $address, $country. Execute from Expression Body');

  String getNameEB() => name;

  String getName() {
    return name;
  }
}

extension SayGoodByePerson on Person {

  void sayGoodBye() => print('Good bye $name. You\'ll be missed');
}

void main() {
  var personAzzam = Person();
  personAzzam.address = 'Garut';
  personAzzam.sayHello('Kevin');
  personAzzam.sayHelloExpressionBody('Kevin');
  personAzzam.sayGoodBye();
  print(personAzzam.getNameEB());
  print(personAzzam.getName());

  Person personNizar = Person();
  personNizar.name = 'Nizar';
  personNizar.address = 'Singaparna';
  personNizar.sayHello('Bush');
}
