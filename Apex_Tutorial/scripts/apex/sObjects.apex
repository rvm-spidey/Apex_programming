Account acct = new Account();
acct.Name = 'My account';
acct.AccountNumber = 'ABC123';
System.debug(acct);

Account acc2 = new Account(Name = 'My second account', AccountNumber = '123');
System.debug(acc2);
