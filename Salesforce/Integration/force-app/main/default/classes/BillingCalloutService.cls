/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-19-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class BillingCalloutService {
    @future(callout = true)
    public static void callBillingService(String projectRef, Decimal billingAmount){
        ServiceCredentials__c srvcCrd = ServiceCredentials__c.getValues('BillingServiceCredential');
                
        BillingServiceProxy.project projectInst = new BillingServiceProxy.project();
        projectInst.username = srvcCrd.Username__c;
        projectInst.password = srvcCrd.Password__c;
        projectInst.billAmount = billingAmount;
        
        BillingServiceProxy.InvoicesPortSoap11 invPortSoapInst = new BillingServiceProxy.InvoicesPortSoap11();
        String response = invPortSoapInst.billProject(projectInst);
        
        List<Project__c> lstOfProjects = new List<Project__c>();
        if(response != null && response.equalsIgnoreCase('OK')){
            List<Project__c> lstOfPrjts = [SELECT Status__c FROM Project__c WHERE ProjectRef__c = :projectRef];
            for(Project__c prjt : lstOfPrjts){
                prjt.Status__c = 'Billed';
                
                lstOfProjects.add(prjt);
            }
            
            UPDATE lstOfProjects;
        }
    }
}
/*trigger ProjectTrigger on Project__c (after update) {
    if(Trigger.isAfter && Trigger.isUpdate){
        for(Project__c prjt : Trigger.new){
            if(prjt.Status__c != null && prjt.Status__c.equals('Billable')){
                BillingCalloutService.callBillingService(prjt.ProjectRef__c, prjt.Billable_Amount__c);
            }
        }
    }
}*/