/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-19-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class InputLWC {
    public InputLWC(){

    }

    @AuraEnabled(Cacheable=True)
    public static List<Account> retrieve(string searchterm){

        List<Account> multiAcc = new List<Account>();
        string search='%'+ searchterm + '%';
        
        try {
            multiAcc=[SELECT Id, Name, Phone, Industry FROM Account
                       WHERE Name LIKE : search
                       ORDER BY CreatedDate DESC];

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        Return multiAcc;
    }
}