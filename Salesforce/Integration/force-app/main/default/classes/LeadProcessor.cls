/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-17-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class LeadProcessor implements Database.Batchable<sObject> { 
   
    public Database.QueryLocator start(Database.BatchableContext bc) {
       // collect the batches of records or objects to be passed to execute
         return Database.getQueryLocator([Select LeadSource From Lead ]);
   }
   public void execute(Database.BatchableContext bc, List<Lead> leads){
        // process each batch of records
           for (Lead Lead : leads) {
               lead.LeadSource = 'Dreamforce';
           }
       update leads;
   }    
   public void finish(Database.BatchableContext bc){
     }

}