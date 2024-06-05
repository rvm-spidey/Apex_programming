public with sharing class BankAccount {

  private Decimal balance = 0;
  private Static Decimal combinedBalance = 0;

  public void deposit(Decimal amt) {
    balance += amt;
    combinedBalance += amt;
  }

  public void withdrawal(Decimal amt) {
    balance -= amt;
    combinedBalance -= amt;
    if (balance < 0) {
      throw new AuraHandledException('Not enough funds to complete the operation');
    }
  }

  public Decimal getBalance() {
    return balance;
  }

  public static Decimal getCombinedBalance() {
    return combinedBalance;
  }



}
