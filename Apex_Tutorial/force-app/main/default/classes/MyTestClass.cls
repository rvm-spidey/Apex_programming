public with sharing class MyTestClass {

    private String firstName;
    public String lastName;

    public void sayHello() {
      System.debug('hello, ' + firstName + lastName);
    }

    public void setFirstName(string fname) {
      firstName = fname;
    }

}
