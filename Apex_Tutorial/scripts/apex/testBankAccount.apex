BankAccount checkingAccount = new BankAccount();
checkingAccount.deposit(400.00);
checkingAccount.withdrawal(150.00);
System.debug(checkingAccount.getBalance());

BankAccount savingsAccount = new BankAccount();
savingsAccount.deposit(500.00);
System.debug(savingsAccount.getBalance());

System.debug(BankAccount.getCombinedBalance());
