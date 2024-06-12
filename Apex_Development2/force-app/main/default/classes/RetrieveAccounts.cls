public with sharing class RetrieveAccounts {

  public static List<Account> getAccounts() {
    try {
      List<Account> lstAccounts = [SELECT Id, Name, Phone, Website FROM Account];
      return lstAccounts;
    } catch (Exception e) {
      throw new AuraHandledException('Unable to process');
    }
  }

  public static Map<Id,Account> getAccountsMap() {
    try{
      List<Account> ls = [SELECT Id,Name FROM Account];
      Map<Id, Account> m = new Map<Id, Account>(ls);
      return m;
    }
    catch (Exception e) {
      throw new AuraHandledException('Unable to process');
    }
  }

}
