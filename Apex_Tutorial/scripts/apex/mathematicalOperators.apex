Decimal x = 4.8;
Integer y = 8;
Integer sum = 0;
sum =  (x + y).intValue();
System.debug(sum);


Date today = Date.today();
System.debug(today.addDays(14).day());


Integer a = 5;
Decimal b = 2.5;
System.debug(a * b);


Account acc1 = new Account(Name = 'My account a');
Account acc2 = new Account(Name = 'My account b');
Account acc3 = acc2;
acc3.Name = 'My account c';

System.debug(acc1);
System.debug(acc2);
System.debug(acc3);
