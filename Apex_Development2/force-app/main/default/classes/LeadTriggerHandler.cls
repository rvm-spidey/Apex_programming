public with sharing class LeadTriggerHandler {

  public static void beforeInsertHandler(List<Lead> newRecords) {
      for (Lead lead: newRecords)
      {
        if (String.isBlank(lead.LeadSource)){
          lead.LeadSource = 'Other';
        }

        if (String.isBlank(lead.Industry)) {
            lead.addError('The industry field cannot be blank');
        }
      }
  }

  public static void beforeUpdateHandler(List<Lead> newRecords, Map<Id,Lead> oldRecordsMap) {
    for (Lead lead: newRecords)
    {
      if (String.isBlank(lead.LeadSource)){
        lead.LeadSource = 'Other';
      }
      if((lead.Status == 'Closed - Converted' || lead.Status == 'Closed - Not Converted') &&  oldRecordsMap.get(lead.Id).Status != 'Working - Contacted')
      {
        lead.Status.addError('You cannot directly close an open lead record');
      }
    }
}
}
