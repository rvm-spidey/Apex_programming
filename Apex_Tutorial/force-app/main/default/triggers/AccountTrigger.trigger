trigger AccountTrigger on Account (before insert) {


  for (Account acct: Trigger.new)
  {
    acct.Active__c = 'Yes';
  }
}
