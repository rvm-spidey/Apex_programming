List<Contact> lstContacts = [
  SELECT FirstName, LastName, Account.Name, Account.Website, Account.Owner.Name, (SELECT Subject FROM Cases) FROM Contact
];

for (Contact con : lstContacts)
{
  System.debug(con + ' , ' +  con.Account );
  for (Case caseobj: con.Cases) {
    System.debug(caseobj.Subject );
  }
  System.debug('--' + '\n');
}
