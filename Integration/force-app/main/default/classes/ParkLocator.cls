/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-17-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ParkLocator {
    public ParkLocator() {
        public static string[] country(string theCountry) {
            ParkService.ParksImplPort  parkSvc = new  ParkService.ParksImplPort(); // remove space
            return parkSvc.byCountry(theCountry);
        }
    }
}