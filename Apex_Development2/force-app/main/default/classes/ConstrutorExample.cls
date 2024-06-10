public with sharing class ConstrutorExample {

    public Integer recoveredInArea = 0;

    public ConstrutorExample() {
      System.debug('Default construtor loaded..');
    }

    public ConstrutorExample(Integer recoveredInArea) {
      this();
      System.debug('Parametrized construtor loaded..');
      this.recoveredInArea = recoveredInArea;
    }
}
