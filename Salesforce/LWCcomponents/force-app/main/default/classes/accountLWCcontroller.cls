/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-18-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class accountLWCcontroller {
    public accountLWCcontroller() {

    }

    @AuraEnabled(Cacheable=True)
    public static List<Account> retrieve(){

        List<Account> multiAcc = new List<Account>();
        
        try {
            
             multiAcc=[SELECT Id, Name, Phone,Industry FROM Account
                      ORDER BY CreatedDate DESC 
                      LIMIT 10];

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        Return multiAcc;
    }
}