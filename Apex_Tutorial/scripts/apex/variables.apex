Integer x;        // null
System.debug(x);  // null
// x + 5; // Error

x = 10;
System.debug(x + 5);

// Integer y;
// System.debug(y + 9);

Integer accountBalance = 1000;
Integer depositi = 300;
Integer newBalance = accountBalance + depositi;
System.debug('new balance ' + newBalance);

Datetime d = Datetime.newInstance(2024, 6, 15, 10 , 30 ,0);
System.debug('d '+ d);

Datetime now = Datetime.now();
System.debug(now.date().format());
System.debug(now.format('yyyy-MM-dd'));

String todayDate = now.format('yyyy-MM-dd');




// sObjects
