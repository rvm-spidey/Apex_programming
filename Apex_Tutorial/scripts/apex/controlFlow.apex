Integer x = 3;

switch on x {
  when 1, 2, 3 {
    System.debug('x is 1,2 or 3');
  }
  when 4, 5 {
    System.debug('x is 4 or 5');
  }
  when 6, 8 {
    System.debug('x is 6 or 8');
  }
  when null {
    System.debug('x is null');
  }
  when else {
    System.debug('x is not 1, 2 xxx ');
  }
}
