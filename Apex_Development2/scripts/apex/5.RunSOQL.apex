System.debug('Hey');
System.debug(RetrieveAccounts.getAccounts());


List<Account> listAccounts = [SELECT Id, Name, AccountNumber FROM Account];
Map<Id,Account> mapAccounts = new Map<Id,Account>(listAccounts);
System.debug('Map: ' + mapAccounts + '\n');

System.debug('Map: ' + mapAccounts.keySet()  + '\n');
System.debug('Map: ' + mapAccounts.values()  + '\n');


Map<Id,Account> mapRetrievedAccounts = RetrieveAccounts.getAccountsMap();
for (Account account : mapRetrievedAccounts.values()) {
  System.debug('Account: ' + account + '\n');
}
