List<Opportunity> listOpportunity = [SELECT Name, Amount FROM Opportunity];

List<Id> oppids = new List<Id>();
for (Opportunity opp : listOpportunity) {
  oppids.add(opp.Id);
}https://www.instagram.com/
System.debug('oppids: ' + oppids);

OpportunityController.updateProfile(oppids);
