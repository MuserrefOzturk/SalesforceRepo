/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-17-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AnimalLocator {
    public AnimalLocator() {
        public static String getAnimalNameById(Integer x){
            Http http = new Http();
            HttpRequest req = new HttpRequest();
            req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + x);
            req.setMethod('GET');
            Map<String, Object> animal= new Map<String, Object>();
            HttpResponse res = http.send(req);
                if (res.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(res.getBody());
          animal = (Map<String, Object>) results.get('animal');
            }
    return (String)animal.get('name');
        }
    }
}