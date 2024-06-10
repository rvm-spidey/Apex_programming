trigger AddContactToAccountTrigger on Account (after insert) {

  // bulkify our code
  List<Contact> lstContacts = new List<Contact>();

  for (Account acct: Trigger.new) {
    Contact c = new Contact();
    c.FirstName = 'Hello';
    c.LastName = 'World';
    c.AccountId = acct.Id;

    lstContacts.add(c);
  }

  insert lstContacts;

  // would still be considered as 1 dml

}
