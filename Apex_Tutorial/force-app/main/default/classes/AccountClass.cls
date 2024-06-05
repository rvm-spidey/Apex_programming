public with sharing class AccountClass {

    @AuraEnabled(cacheable=true)

    public static List<Account> getAccounts(String searchTextClass){
      try {
        if (String.isEmpty(searchTextClass)) {
          return [SELECT id, Name from Account];
        }
        else {
          searchTextClass = '%' + searchTextClass + '%';
          return [SELECT id, Name from Account WHERE Name LIKE :searchTextClass] ;
        }

      } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
      }
    }

}