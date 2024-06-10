Integer employees = 2000;
Set<Id> ids = new Set<Id> {'001Qy00000KuJczIAF', '001Qy00000KuJd0IAF'};

System.debug('---');

List<Account> accountList = [
  SELECT Id, Name FROM Account
  WHERE NumberOfEmployees > :employees
  AND Id IN :ids
];

for (Account acct : accountList) {
  System.debug(acct);
}
