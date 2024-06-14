trigger LeadTrigger on Lead (before insert, before update, after insert, after update) {

  System.debug('Lead trigger called');


  switch on Trigger.operationType {
    when BEFORE_INSERT {
        LeadTriggerHandler.handleBeforeInsert(Trigger.new);
      // for (Lead lead: Trigger.new)
      // {
      //   if (String.isBlank(lead.LeadSource)){
      //     lead.LeadSource = 'Other';
      //   }

      //   if (String.isBlank(lead.Industry)) {
      //       lead.addError('The industry field cannot be blank');
      //   }
      // }
    }
    when BEFORE_UPDATE {
      LeadTriggerHandler.handleBeforeInsert(Trigger.new, Trigger.oldMap);
      // for (Lead lead: Trigger.new)
      // {
      //   if (String.isBlank(lead.LeadSource)){
      //     lead.LeadSource = 'Other';
      //   }
      //   if((lead.Status == 'Closed - Converted' || lead.Status == 'Closed - Not Converted') &&  Trigger.oldMap.get(lead.Id).Status != 'Working - Contacted')
      //   {
      //     lead.Status.addError('You cannot directly close an open lead record');
      //   }
      // }
    }

    when AFTER_INSERT {
      for (Lead lead: Trigger.new)
      {
        System.debug('Lead after insert trigger called');
        Task leadTask = new Task(Subject = 'Follow up', WhoId = lead.Id, ActivityDate = Date.today().addDays(7));
        insert leadTask;
      }
    }

  }


  // for (Lead lead: Trigger.new)
  // {
  //   if (Trigger.isBefore && String.isBlank(lead.LeadSource)){
  //     lead.LeadSource = 'Other';
  //   }

  //   if((lead.Status == 'Closed - Converted' || lead.Status == 'Closed - Not Converted') &&  Trigger.oldMap.get(lead.Id).Status != 'Working - Contacted')
  //   {
  //     lead.Status.addError('You cannot directly close an open lead record');
  //   }


  //   if (String.isBlank(lead.Industry) && Trigger.isInsert ) {
  //       lead.addError('The industry field cannot be blank');
  //   }
  // }
}
