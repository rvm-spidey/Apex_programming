public with sharing class OpportunityController {

  public static void updateProfile(List<Id> oppIds)
  {
    for (Id oppId: oppIds)
    {
      Opportunity oppRecord = [SELECT id, Amount, Profile__C FROM Opportunity WHERE Id = :oppId];

      if (oppRecord.Amount < 10000) {
        oppRecord.Profile__C = 'Low';
      }
      else if (oppRecord.Amount < 50000) {
        oppRecord.Profile__C = 'Medium';
      }
      else {
        oppRecord.Profile__C = 'High';
      }
      update oppRecord;
    }
  }

  public static void updateProfilesOptmised(List<Id> oppIds)
  {
    List<Opportunity> listOppIds = [SELECT id, Amount, Profile__C FROM Opportunity WHERE Id in :oppIds];
    for (Opportunity oppRecord: listOppIds)
    {
      if (oppRecord.Amount < 10000) {
        oppRecord.Profile__C = 'Low';
      }
      else if (oppRecord.Amount < 50000) {
        oppRecord.Profile__C = 'Medium';
      }
      else {
        oppRecord.Profile__C = 'High';
      }
    }
    update listOppIds;

  }
}
