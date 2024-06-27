/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-20-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class apexinlwc {
    public apexinlwc() {

    }

    @AuraEnabled(Cacheable=true)

    public static List<Account> retrive(string searchterm){

    string search='%'+ searchterm + '%';

        List<Account> multiAcc = new List<Account>();
        try {
            
            multiAcc= [SELECT Id, Name, Industry, Phone FROM Account
            WHERE Name LIKE : search
            ORDER BY CreatedDate DESC];

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return multiAcc;
    }
}