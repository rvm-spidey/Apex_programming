Account acct = new Account(Name = 'My test account via apex2');
System.debug('Before insert ' + acct);

insert acct;

System.debug('After insert ' + acct);
// {Name=My test account via apex, Id=001Qy00000MR9UgIAL}


Account a1 = [
  SELECT Id, Name, AnnualRevenue, AccountNumber
  From Account
  Where Id = '001Qy00000KuJczIAz'
];

a1.AccountNumber = '123';
upsert a1;
