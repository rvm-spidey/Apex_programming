class MyClass {

  MyClass() {
    System.debug('executing constructor');
    Name = 'Han solo';
  }

  MyClass(String userName) {
    System.debug('executing constructor with parameter');
    name = userName;
  }

  String name;

  void sayHello() {
    System.debug('hello ' + name);
  }
}

MyClass c = new MyClass('Luke skywalker');
c.sayHello();
