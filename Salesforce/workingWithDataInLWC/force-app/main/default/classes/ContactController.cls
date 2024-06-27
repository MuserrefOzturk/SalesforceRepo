/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-12-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ContactController {
    public ContactController() {

    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        /*return [
            SELECT FirstName, LastName, Email
            FROM Contact
        
            WITH SECURITY_ENFORCED
       ];*/
       throw new AuraHandledException('Forced error');
    }
}