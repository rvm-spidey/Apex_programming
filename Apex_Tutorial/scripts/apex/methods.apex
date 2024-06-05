class MyClass {

  void writeLog(string name) {
    System.debug('hello ' + name);
  }

  String sayHello(String name) {
    String result = 'hey my friend ' + name;
    return result;
  }

}

MyClass mc = new MyClass();
mc.writeLog('june');

String result = mc.sayHello('andrew');
System.debug('result '+ result);
