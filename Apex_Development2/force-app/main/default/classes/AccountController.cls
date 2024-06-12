public with sharing class AccountController {

  public static List<Account> insertAccounts(List<Account> accounts) {
    insert accounts;
    return accounts;
  }

  public static Account insertAccount(Account accountToInsert) {
    insert accountToInsert;
    return accountToInsert;
  }

  public static List<Account> getAllAccounts() {
    List<Account> listAccounts = [SELECT Name, AccountNumber, Phone FROM Account];
    return listAccounts;
  }

  public static void printAllAccounts() {
    List<Account> listAccounts =  getAllAccounts();

    for (Account account : listAccounts) {
        System.debug('Account Name: ' + account.Name);
    }
  }
}
